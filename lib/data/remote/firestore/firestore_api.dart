import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fimber/fimber.dart';
import 'package:stacked_state_mamagement/data/beans/application_models.dart';
import 'package:stacked_state_mamagement/exceptions/firestore_api_exceptions.dart';
import 'package:stacked_state_mamagement/utils/app_constants.dart';

class FirestoreApi {

  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection(UsersFirestoreKey);

  final CollectionReference regionsCollection =
  FirebaseFirestore.instance.collection(RegionsFirestoreKey);

  Future<void> createUser({required User user}) async {
    Fimber.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set(user.toJson());
      Fimber.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<User?> getUser({required String userId}) async {
    Fimber.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        Fimber.v('We have no user with id $userId in our database');
        return null;
      }

      final userData = userDoc.data();
      Fimber.v('User found. Data: $userData');

      return User.fromJson(userData! as Map<String, dynamic>);
    } else {
      throw FirestoreApiException(
          message:
          'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }

  /// Saves the address passed in to the backend for the user and also sets
  /// the default address if the user doesn't have one set.
  /// Returns true if no errors occured
  /// Returns false for any error at any part of the process
  Future<bool> saveAddress({
    required Address address,
    required User user,
  }) async {
    Fimber.i('address:$address');

    try {
      final addressDoc = getAddressCollectionForUser(user.id).doc();
      final newAddressId = addressDoc.id;
      Fimber.v('Address will be stored with id: $newAddressId');

      await addressDoc.set(
        address.copyWith(id: newAddressId).toJson(),
      );

      final hasDefaultAddress = user.hasAddress;

      Fimber.v('Address save complete. hasDefaultAddress:$hasDefaultAddress');

      if (!hasDefaultAddress) {
        Fimber.v(
            'This user has no default address. We need to set the current one as default');

        await usersCollection.doc(user.id).set(
          user.copyWith(address: newAddressId).toJson(),
        );
        Fimber.v('User ${user.id} defaultAddress set to $newAddressId');
      }

      return true;
    } on Exception catch (e) {
      Fimber.e('we could not save the users address. $e');
      return false;
    }
  }

  Future<bool> isCityServiced({required String city}) async {
    Fimber.i('city:$city');
    final cityDocument = await regionsCollection.doc(city).get();
    return cityDocument.exists;
  }

  CollectionReference getAddressCollectionForUser(String userId) {
    return usersCollection.doc(userId).collection(AddressesFirestoreKey);
  }
}

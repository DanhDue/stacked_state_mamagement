

import 'package:fimber/fimber.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/data/beans/application_models.dart';
import 'package:stacked_state_mamagement/data/remote/firestore/firestore_api.dart';

class UserService {

  final _firestoreApi = locator<FirestoreApi>();
  final _firebaseAuthenticationService =
  locator<FirebaseAuthenticationService>();

  User? _currentUser;

  User get currentUser => _currentUser!;

  bool get hasLoggedInUser => _firebaseAuthenticationService.hasUser;

  Future<void> syncUserAccount() async {
    final firebaseUserId =
        _firebaseAuthenticationService.firebaseAuth.currentUser!.uid;

    Fimber.v('Sync user $firebaseUserId');

    final userAccount = await _firestoreApi.getUser(userId: firebaseUserId);

    if (userAccount != null) {
      Fimber.v('User account exists. Save as _currentUser');
      _currentUser = userAccount;
    }
  }

  Future<void> syncOrCreateUserAccount({required User user}) async {
    Fimber.i('user:$user');

    await syncUserAccount();

    if (_currentUser == null) {
      Fimber.v('We have no user account. Create a new user ...');
      await _firestoreApi.createUser(user: user);
      _currentUser = user;
      Fimber.v('_currentUser has been saved');
    }
  }
}
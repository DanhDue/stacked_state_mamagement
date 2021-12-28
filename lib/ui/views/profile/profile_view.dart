import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      disposeViewModel: false,
      // Indicate that we only want to initialise a specialty view model once
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(model.users?.first.toJson().toString() ?? ''),
            TextButton(
              onPressed: () {
                model.navigateToLogin();
              },
              child: const Text('Continue'),
            )
          ],
        ),
      ),
      viewModelBuilder: () => locator<ProfileViewModel>(),
      onModelReady: (model) {
        model.getUserProfile();
      },
    );
  }
}

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view_model.dart';

import '../../../main.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with RouteAware {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

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

  @override
  void dispose() {
    super.dispose();
    routeObserver.unsubscribe(this);
  }

  @override
  void didPush() {
    // Route was pushed onto navigator and is now topmost route.
    Fimber.d('Route was pushed onto navigator and is now topmost route.');
  }

  @override
  void didPopNext() {
    // Covering route was popped off the navigator.
    Fimber.d('Covering route was popped off the navigator.');
  }
}

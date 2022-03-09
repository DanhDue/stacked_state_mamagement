import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';

import 'activity_view_model.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActivityViewModel>.reactive(
      disposeViewModel: false,
      // Indicate that we only want to initialise a specialty view model once
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: TextButton(
          onPressed: () {
            model.navigateToPartialBuildsView();
          },
          child: const Text('Continue'),
        )),
      ),
      viewModelBuilder: () => locator<ActivityViewModel>(),
    );
  }
}

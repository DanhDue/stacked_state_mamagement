import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/ui/views/workout/workout_view_model.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WorkoutViewModel>.reactive(
      disposeViewModel: false,
      // Indicate that we only want to initialise a specialty view model once
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text('Workout'),
        ),
      ),
      viewModelBuilder: () => locator<WorkoutViewModel>(),
    );
  }
}

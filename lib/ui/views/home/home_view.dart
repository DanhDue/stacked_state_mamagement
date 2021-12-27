import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/ui/views/activity/activity_view.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view.dart';
import 'package:stacked_state_mamagement/ui/views/program/program_view.dart';
import 'package:stacked_state_mamagement/ui/views/workout/workout_view.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[800],
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              title: Text('Program'),
              icon: Icon(Icons.art_track),
            ),
            BottomNavigationBarItem(
              title: Text('Workout'),
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              title: Text('Activity'),
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              title: Text('Profile'),
              icon: Icon(Icons.list),
            ),
          ],
        ),
        body: getViewForIndex(model.currentIndex),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0: return const ProgramView();
      case 1: return const WorkoutView();
      case 2: return const ActivityView();
      case 3: return const ProfileView();
      default: return const ProgramView();
    }
  }

}

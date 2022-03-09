import 'package:animations/animations.dart';
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
          backgroundColor: Colors.grey[86],
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Program',
              icon: Icon(Icons.art_track),
            ),
            BottomNavigationBarItem(
              label: 'Workout',
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: 'Activity',
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.list),
            ),
          ],
        ),
        body: PageTransitionSwitcher(
            duration: const Duration(milliseconds: 300),
            reverse: model.reverse,
            transitionBuilder: (
              Widget child,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) {
              return SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
              );
            },
            child: getViewForIndex(model.currentIndex)),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const ProgramView();
      case 1:
        return const WorkoutView();
      case 2:
        return const ActivityView();
      case 3:
        return const ProfileView();
      default:
        return const ProgramView();
    }
  }
}

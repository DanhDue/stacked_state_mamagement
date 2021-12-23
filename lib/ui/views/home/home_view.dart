import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              model.getUserProfile();
            },
            child: const Text('Continue'),
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

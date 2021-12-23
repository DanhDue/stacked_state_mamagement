import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'onboard_view_model.dart';

class OnboardView extends StatelessWidget {
  const OnboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(),
      viewModelBuilder: () => OnboardViewModel(),
    );
  }
}

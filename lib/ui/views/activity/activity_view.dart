import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'activity_view_model.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActivityViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(),
      viewModelBuilder: () => ActivityViewModel(),
    );
  }
}

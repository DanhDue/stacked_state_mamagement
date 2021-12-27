import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/ui/views/profile/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text('Login'),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}

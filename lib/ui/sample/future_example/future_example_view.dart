import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'future_example_view_model.dart';

class FutureExampleView extends StatelessWidget {
  FutureExampleView({Key? key}) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.hasError ? Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          'An error has occurred while running the future: ${model.error.toString()}',
          style: const TextStyle(color: Colors.white),
        ),
      )
            : Center(
          child: model.isBusy ? const CircularProgressIndicator() : Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(model.data ?? ''),
              TextButton(
                onPressed: () {
                  _navigationService.navigateTo(Routes.streamExampleView);
                },
                child: const Text('Continue'),
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => FutureExampleViewModel(),
    );
  }
}


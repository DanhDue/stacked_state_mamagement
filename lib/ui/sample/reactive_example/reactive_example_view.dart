import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';
import 'package:stacked_state_mamagement/ui/sample/smart_widgets/double_increase_counter/double_increase_counter_view.dart';
import 'package:stacked_state_mamagement/ui/sample/smart_widgets/single_increase_counter/single_increase_counter_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class ReactiveExampleView extends StatelessWidget {
  ReactiveExampleView({Key? key}) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                SingleIncreaseCounter(),
                SizedBox(width: 50),
                DoubleIncreaseCounter(),
              ],
            ),
            TextButton(
              onPressed: () {
                _navigationService.navigateTo(Routes.futureExampleView);
              },
              child: const Text('Continue'),
            )
          ],
        ),
      ),
    );
  }
}

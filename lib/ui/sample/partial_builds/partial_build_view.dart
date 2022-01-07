import 'package:fimber/fimber.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/app/app.router.dart';
import 'package:stacked_state_mamagement/ui/sample/partial_builds/partial_build_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';
import 'package:stacked_services/stacked_services.dart';

class PartialBuildsView extends StatelessWidget {
  PartialBuildsView({Key? key}) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _StringForm(),
            const _TextAndValue(),
            TextButton(
              onPressed: () {
                _navigationService.navigateTo(Routes.reactiveExampleView);
              },
              child: const Text('Continue'),
            )
          ],
        ),
      ),
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  const _StringForm({Key? key}) : super(key: key, reactive: false);

  @override
  Widget buildViewModelWidget(
    BuildContext context,
    PartialBuildsViewModel model,
  ) {
    Fimber.d('_StringForm rebuilt');
    var text = useTextEditingController();
    return TextField(
      controller: text,
      onChanged: model.updateString,
    );
  }
}

class _TextAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TextAndValue({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel model) {
    Fimber.d('_TextAndValue rebuilt');
    return Text(
      model.title ?? '',
      style: const TextStyle(fontSize: 40),
    );
  }
}

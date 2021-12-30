import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_state_mamagement/ui/sample/stream_example/stream_example_view_model.dart';

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StreamExampleViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: MaterialButton(
          child: const Text('Change Stream Source'),
          onPressed: model.swapSources,
        ),
      ),
      viewModelBuilder: () => StreamExampleViewModel(),
    );
  }
}

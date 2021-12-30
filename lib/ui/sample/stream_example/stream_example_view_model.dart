import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => 'This is the time since epoch in seconds \n $data';

  bool _otherSource = false;

  @override
  Stream<int> get stream => _otherSource ? epochFasterUpdates() : epochUpdatesNumbers();

  void swapSources() {
    _otherSource = !_otherSource;
    notifySourceChanged();
  }

  Stream<int> epochUpdatesNumbers() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochFasterUpdates() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

}

import 'package:stacked/stacked.dart';

class PartialBuildsViewModel extends BaseViewModel {
  late String? _title = 'DanhDue ExOICTIF';
  String? get title => _title;
  void updateString(String value) {
    _title = value;
    notifyListeners();
  }
}

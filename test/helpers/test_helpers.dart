import 'package:mockito/annotations.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';

@GenerateMocks(
  [], customMocks: []
)

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
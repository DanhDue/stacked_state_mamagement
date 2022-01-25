import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_state_mamagement/app/app.locator.dart';
import 'package:stacked_state_mamagement/services/counter_service.dart';

@GenerateMocks([], customMocks: [
  // If we don<t supply returnNullOnMissingStub then well get an exception when
  // a non-stubbed method is called.
  MockSpec<CounterService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
])
class TestHelpers {}

void _removeRegistrationIfExists<T>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
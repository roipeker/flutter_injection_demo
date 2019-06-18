import 'package:dependency_injection_13/app_info.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt();
void setupLocators() {
  locator.registerFactory(() => AppInfo());
}

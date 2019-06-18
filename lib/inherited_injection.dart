import 'package:dependency_injection_13/app_info.dart';
import 'package:flutter/cupertino.dart';

class InheritedInjection extends InheritedWidget {
  final AppInfo _info = AppInfo();
  AppInfo get info => _info;

  static InheritedInjection of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(InheritedInjection) as InheritedInjection;
  }

  final Widget child;
  InheritedInjection({Key key, this.child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

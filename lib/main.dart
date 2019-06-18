import 'package:dependency_injection_13/app_info.dart';
import 'package:dependency_injection_13/home_view.dart';
import 'package:dependency_injection_13/inherited_injection.dart';
import 'package:dependency_injection_13/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // needed to do before the initialization of the context.
  setupLocators();

  AppInfo.injection = Injection.Provider;
//  AppInfo.injection = Injection.Inherited;
//  AppInfo.injection = Injection.Getit;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dependency injection demo',
      theme: ThemeData(),
      home: injectorCallback(context),
    );
  }

  Widget testGetit(BuildContext context) {
    return HomeView();
  }

  Widget testInherited(BuildContext context) {
    return InheritedInjection(
      child: HomeView(),
    );
  }

  Widget testProvider(BuildContext context) {
    return Provider(
      builder: (context) => AppInfo(),
      child: HomeView(),
    );
  }

  // decidir que tipo de injection usar.
  InjectorCallback get injectorCallback {
    switch (AppInfo.injection) {
      case Injection.Inherited:
        return testInherited;
      case Injection.Getit:
        return testGetit;
      case Injection.Provider:
      default:
        return testProvider;
    }
  }
}

typedef InjectorCallback = Function(BuildContext context);

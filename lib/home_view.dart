import 'dart:async';
import 'package:dependency_injection_13/app_info.dart';
import 'package:dependency_injection_13/inherited_injection.dart';
import 'package:dependency_injection_13/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MyList(),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostItem();
  }
}

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostMenu();
  }
}

class PostMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostAction();
  }
}

class PostAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListButton();
  }
}

class ListButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appInfo = getAppInfo(context);
    return Container(
      child: Text("${appInfo.message} \nusando ${AppInfo.injection}"),
    );
  }

  AppInfo getAppInfo(BuildContext context) {
    switch (AppInfo.injection) {
      case Injection.Inherited:
        return InheritedInjection.of(context).info;
      case Injection.Getit:
        return locator.get<AppInfo>();
      case Injection.Provider:
      default:
        return Provider.of<AppInfo>(context);
    }
  }
}

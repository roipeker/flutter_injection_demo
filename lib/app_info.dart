class AppInfo {
  static Injection injection;
  String get message => 'Hola mundo!';
}

enum Injection { Provider, Inherited, Getit }

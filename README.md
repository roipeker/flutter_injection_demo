
# Flutter dependency injection  
  
Basic Flutter project based on [filledstacks](https://www.filledstacks.com/post/flutter-dependency-injection-a-beginners-guide) tutorial for dependency injection.
Explores the 3 methods to pass data down the widget tree:

 1. [Inherited Widget](https://www.youtube.com/watch?v=Zbm3hjPjQMk): builtin solution since the beginning used by numerous libraries.
 2. [Provider](https://pub.dev/packages/provider): the library recommended in Google/IO 19 for dependency injection and state management.
 3. [GetIt](https://pub.dev/packages/get_it) : very simple and clean approach to get the data anywhere in the tree.

Unlike filledstack's github demo, this project provides a simple way to change the Injection method to test, just uncomment what you wanna try:

    void main() {  
    ... 
      AppInfo.injection = Injection.Provider;  
    //  AppInfo.injection = Injection.Inherited;  
    //  AppInfo.injection = Injection.Getit;  
    ...
    }
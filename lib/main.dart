import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';

//entry point of flutter app
void main() async  {

  // Todo:  Add widget binding
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Todo: Init local storage
  // Todo: Await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication

  FlutterNativeSplash.remove();


  runApp(const App());
}
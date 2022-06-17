import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/welcome_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WelcomePage(),
    );
  }
}
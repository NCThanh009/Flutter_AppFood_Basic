import 'package:flutter/material.dart';
import 'package:flutter_application_food_app/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_food_app/screens/home_screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

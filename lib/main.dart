import 'package:flutter/material.dart';

import 'package:counter_welcome_new_app/screens/counter_args_screen.dart';
// import 'package:counter_welcome_new_app/screens/counter_screen.dart';
// import 'package:counter_welcome_new_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      // home: CounterScreen(),
      home: CounterArgsScreen(),
    );
  }
}

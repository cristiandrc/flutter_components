import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const AlertScreen(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listView1': (context) => const ListVew1Screen(),
        'listView2': (context) => const ListVew2Screen(),
        'alert': (context) => const AlertScreen(),
      },
    );
  }
}

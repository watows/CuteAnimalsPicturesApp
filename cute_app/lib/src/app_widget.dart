import 'package:flutter/material.dart';

import 'modules/home/presenter/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cute App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFE3F2FD),
      ),
      home: const HomePage(),
    );
  }
}

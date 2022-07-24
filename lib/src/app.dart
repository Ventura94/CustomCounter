import 'package:flutter/material.dart';

import 'package:custom_counter/src/pages/couter_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountPage(),
    );
  }
}

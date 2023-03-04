import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/data.dart';
import 'package:bmi/Screens/Home_Ui_Page_01.dart';
import 'Screens/Home_Ui_Page_02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>DataProvider()),

        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        )
    );
  }
}





import 'package:flutter/material.dart';
import 'package:rock/mainpage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rock/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(320, 900),
      builder: (context, child) {
      return  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Rock Paper scissor",
          theme: Apptheme.dark(),
          home: Mainpage(),
        );
      },
    );
  }
}

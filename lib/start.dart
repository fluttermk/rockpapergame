import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rock/mode.dart';
import 'package:rock/result.dart';

class Startgame extends StatefulWidget {
  const Startgame({super.key});

  @override
  State<Startgame> createState() => _StartgameState();
}

class _StartgameState extends State<Startgame> {
  String robotchoice(int position) {
    return Appdata.images[position].name!;
  }

  Widget gameimage(int index) {
    return GestureDetector(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(
              builder:
                  (context) => Result(
                    position: index,
                    robotpostion: Appdata.robotname(),
                  ),
            ),
          ),

      child: CircleAvatar(
        radius: 100.r,
        backgroundImage: AssetImage(Appdata.images[index].imagedata!),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pick your option",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                gameimage(0),
                SizedBox(height: 10),
                gameimage(1),
                SizedBox(height: 10),
                gameimage(2),
              ],
            ),

            TextButton(
              style: TextButton.styleFrom(
                shape: BeveledRectangleBorder(),
                padding: EdgeInsets.symmetric(
                  vertical: 20.h,
                  horizontal: 100.h,
                ),
              ),
              onPressed: () {},
              child: Text(
                "How to play",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

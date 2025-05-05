import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rock/start.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 150.r,

            backgroundImage: NetworkImage(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEyDsrR7R8QUoQRDQOUmHzf6g89OLYUCasgg&s",
            ),
          ),

          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: BeveledRectangleBorder(),
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Startgame()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Play the game",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    shape: BeveledRectangleBorder(),
                  ),
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      "Exit the game",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

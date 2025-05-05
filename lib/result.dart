import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rock/mainpage.dart';
import 'package:rock/mode.dart';

class Result extends StatefulWidget {
  final int position;
  final int robotpostion;
  const Result({super.key, required this.position, required this.robotpostion});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String winner() {
    return Appdata.winnerdetermination(
      Appdata.images[widget.position].name!,
      Appdata.images[widget.robotpostion].name!,
    );
  }

  Widget resultimage(int pos) {
    return CircleAvatar(
      radius: 80.r,
      backgroundImage: AssetImage(Appdata.images[pos].imagedata!),
    );
  }

  Widget scorceboard(String name, int scorce, Color colorname) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
           color: colorname,
        ),
        constraints: BoxConstraints.expand(height: 100, width: 130.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name, style: Theme.of(context).textTheme.headlineSmall),
            Text("$scorce", style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Results", style: Theme.of(context).textTheme.displayLarge),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                resultimage(widget.position),
                SizedBox(width: 20),
                Text("Vs", style: Theme.of(context).textTheme.displayMedium),
                SizedBox(width: 20),
                resultimage(widget.robotpostion),
              ],
            ),
          ),
          Text(winner(), style: Theme.of(context).textTheme.displayMedium),
      
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                scorceboard("Userscore", Appdata.scores[0], Colors.red),
                scorceboard("Aiscore", Appdata.scores[1], Colors.red),
              ],
            ),
          ),
          Column(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 100.h,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Play Again",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: BeveledRectangleBorder(),
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 80.h,
                  ),
                ),
                onPressed: () {
                  Appdata.clearScorce();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mainpage()),
                  );
                },
                child: Text(
                  "Exit the game",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

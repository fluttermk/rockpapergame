import 'dart:math';

class Appdata {
  String? name;
  String? imagedata;

  Appdata({required this.name, required this.imagedata});

  static List<Appdata> images = [
    Appdata(name: "rock", imagedata: "assets/rock.png"),
    Appdata(name: "paper", imagedata: "assets/paper.png"),
    Appdata(name: "scissors", imagedata: "assets/scissors.png"),
  ];

  static List<int> scores = [4, 0];

  static int robotname() {
    int robotvalue = Random().nextInt(3);
    return robotvalue;
  }

  static String winnerdetermination(String userchoice, String robotchoice) {
    if (userchoice == robotchoice) {
      return "The Match is drawn";
    } else if (userchoice == "rock" && robotchoice == "scissors" ||
        userchoice == "scissors" && robotchoice == "paper" ||
        userchoice == "paper" && robotchoice == "rock") {
      scores[0] += 1;
      return "User wins the round";
    } else {
      scores[1] += 1;
      return "Robot wins the round";
    }
  }

  static void clearScorce() {
    scores[0] = 0;
    scores[1] = 0;
  }
}

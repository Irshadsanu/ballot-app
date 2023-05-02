import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vote_ballot/ModeList.dart';

class ProviderClass extends ChangeNotifier{
  Color iconColor = const Color(0xff5E1A19);
  Color readyColor = Colors.green;
  int coloredIconIndex = -1;
  final List<modelist> Candidate=[

      modelist(
         "",
          "",
          "1",
      ),
     modelist(
          "",
         "",
         "2",
     ),
     modelist(
         'assets/soccerBall.png',
         "ಆನಂದ್ ಗೌಡ",
         "3",
      ),
     modelist(
          "",
          "",
          "4",
      ),
     modelist(
          "",
          "",
          "5",

      ),
     modelist(
          "",
          "",
          "6",
      ),
     modelist(
          "",
          "",
          "7",
      ),
     modelist(
          "",
          "",
          "8",
      ),
     modelist(
          "",
          "",
          "9",
      ),
     modelist(
          "",
          "",
          "10",
      ),


  ];



   void changeColor() {
     readyColor = Colors.red;
     // iconColor = Colors.red;
     notifyListeners();
   }
   void IIndex (int index){
     coloredIconIndex = index;
   }

   void resetColor() {
     iconColor = Color(0xff5E1A19);
     readyColor = Colors.green;
     // notifyListeners();
   }
}








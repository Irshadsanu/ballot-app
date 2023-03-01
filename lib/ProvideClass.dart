import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vote_ballot/ModeList.dart';

class ProviderClass extends ChangeNotifier{
  Color iconColor = Color(0xff5E1A19);
  final List<modelist> Candidate=[

      modelist(
          name:"",
          Id:"1",
          icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"2",
         icon:'assets/ayshaicon.jpg'
     ),
     modelist(
          name:"ആസ്യ കെ സി",
          Id:"3",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"4",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"5",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"6",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"7",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"8",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"9",
         icon:'assets/ayshaicon.jpg'
      ),
     modelist(
          name:"",
          Id:"10",
         icon:'assets/ayshaicon.jpg'
      ),


  ];



   void changeColor() {
     iconColor = Colors.red;
     notifyListeners();
   }

   void resetColor() {
     iconColor = Color(0xff5E1A19);
     notifyListeners();
   }
}








import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vote_ballot/Hompage.dart';

class Vpat extends StatefulWidget {
  const Vpat({Key? key}) : super(key: key);

  @override
  State<Vpat> createState() => _VpatState();
}

class _VpatState extends State<Vpat> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  bool _isVisible = false;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync:this, duration: Duration(seconds: 8));

    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(0,1))
        .animate(_controller);

    Timer(Duration(seconds: 8),
          ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>Homepage()),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    _controller.forward();

    return Scaffold(
      body: Center(
        child: Stack(children: [

          Positioned(
            left: 82,
            top: 180,
            child: SlideTransition(

                position: _animation,
               child: Container(
                 padding: EdgeInsets.only(bottom: 35,),
                 // width: 250,
                 //  height: 200,
                // color: Colors.brown,
                  child: Column(
                    children: [
                      Text("ആസ്യ കെ സി",style: TextStyle(fontSize: 10),),
                      Text("3",style: TextStyle(fontWeight: FontWeight.bold),),
                      Image.asset("assets/ayshaicon.jpg",scale:23 ,)
                    ],
                  ),)
                ),
          ),
            Image.asset("assets/vvpat.png"),
        ],
      ),
      ));
  }
}

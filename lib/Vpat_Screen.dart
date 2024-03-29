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
        AnimationController(vsync:this, duration: const Duration(seconds: 8));

    _animation = Tween<Offset>(begin: Offset.zero, end: const Offset(0,1))
        .animate(_controller);

    Timer(const Duration(seconds: 8),
          ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>const Homepage()),
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
                 padding: const EdgeInsets.only(bottom: 35,),
                 // width: 250,
                 //  height: 200,
                // color: Colors.brown,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("ಆನಂದ್ ಗೌಡ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      const Text("3",style: TextStyle(fontWeight: FontWeight.bold),),
                      Image.asset("assets/soccerBall.png",scale:23 ,)
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

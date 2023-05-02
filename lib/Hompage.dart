

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vote_ballot/ProvideClass.dart';
import 'package:vote_ballot/Vpat_Screen.dart';


class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProviderClass donationProvider =
    Provider.of<ProviderClass>(context,listen:false);
donationProvider.resetColor();
donationProvider.coloredIconIndex =-1;
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var width = queryData.size.width;
    var height = queryData.size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(4),
            height: 720,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black12,
                border:Border.all(width: 5,color: Colors.black54) ,
                borderRadius:BorderRadius.circular(20)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(height: height/9,),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    bottom: 5,
                    left: 20
                  ),
                  child: SizedBox(
                    width: width/2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Consumer<ProviderClass>(
                          builder: (context,value,child) {
                            return Row(
                              children:  [
                                const Text("Ready"),
                            Icon(Icons.circle ,color:value.readyColor,)
                              ],
                            );
                          }
                        ),
                        Row(
                          children: [
                            const Text("Ballot Unit"),
                        Container(
                          alignment: Alignment.center,
                          margin:  const EdgeInsets.only(left: 3),
                          height: 28,
                          width: 22,
                          decoration:
                        BoxDecoration(color: Colors.black54,
                            borderRadius: BorderRadius.circular(12)),
                          child: const Text("1",style: TextStyle(color: Colors.white)),
                        )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 550,
                  child: Consumer<ProviderClass>(
                    builder: (context,value,child) {
                      return ListView.builder(
                        itemCount:value.Candidate.length,
                          itemBuilder: (context, index) {
                          var item =value.Candidate[index];
                            return  Card(
                              margin: const EdgeInsets.all(1),
                              child: ListTile(
                                tileColor: Colors.white,
                                trailing: Container(
                                  width: 120,
                                  height: 60,
                                  color: Colors.grey.shade500,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.circle,
                                          color:
                                          value.coloredIconIndex == index?Colors.red: value.iconColor),
                                      ElevatedButton( onPressed: (){
                                        // FlutterBeep.beep();
                                        if(item.Id=="3"){
                                        final player=AudioPlayer();
                                        player.play(AssetSource('beep.mp3'));
                                        value.IIndex(index);
                                        value.changeColor();
                                        Timer(const Duration(milliseconds: 1300 ), () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Vpat()));
                                        });
                                        // value.resetColor();
                                        }else{

                                        }

                                      },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xff183869),
                                              shape: (
                                                  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(18.0),
                                                  )
                                              )
                                          )

                                          ,
                                          child: const SizedBox(width: 45,))
                                    ],
                                  ),
                                ),
                                title: Row(
                               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(item.Id.toString()),
                                    const SizedBox(width: 12),
                                    Text(item.name.toString(),style: const TextStyle(fontWeight: FontWeight.bold)),
                                    const Spacer(),
                                    item.icon ==""?const SizedBox():Image.asset(item.icon.toString(),scale: 15),
                                  ],
                                ),
                                // leading:,
                              ),
                            );
                          },);
                    }
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

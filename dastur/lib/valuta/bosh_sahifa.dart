import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Boshsahifa extends StatelessWidget {
  const Boshsahifa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.all(Radius.circular(30))),child: Column(children: [Column(   crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(   
                  padding: const EdgeInsets.only(top: 39,right: 200),
                  child: Text("Главная",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w300),),),
                  Padding(
                  padding: const EdgeInsets.only(right: 190),
                  child: Text("Курсы валют",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w300),),
                  ),
              ],
            ),  ],),
      ),
    );
  }
}

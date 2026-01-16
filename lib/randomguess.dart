import 'dart:math';

import 'package:flutter/material.dart';

class RandomGuessGame extends StatefulWidget {
  const RandomGuessGame({super.key});

  @override
  State<RandomGuessGame> createState() => _RandomGuessGameState();
}

class _RandomGuessGameState extends State<RandomGuessGame> {

  int x=0,luckynum=7;
  Random random=Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Try your Luck Game",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                ),),

              Text("Lucky number is $luckynum \nClick on refresh button to regenerate your number",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,),

              SizedBox(height: 20,),

              x==luckynum ? Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.emoji_events,
                        size: 60,
                        color: Colors.yellow,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Conguratulation, You won \n Your Number is $x",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      )
                    ],
                  ),
                ),
              ) : Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sentiment_very_dissatisfied,
                        size: 60,
                        color: Colors.yellow,),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Unfortunately, You lose \n Your Number is $x \n try again!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        x=random.nextInt(10);
        setState(() {

        });
      },
        child: Icon(Icons.autorenew),
        backgroundColor: Colors.cyan,
        foregroundColor: Colors.white,),
    );
  }
}


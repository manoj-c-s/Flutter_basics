import 'dart:math';

import 'package:flutter/material.dart';

class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
            color: Colors.lightBlueAccent,
            child: Center(
              child: Text(
                  lucky(),
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.center,
                  style:TextStyle(fontSize: 44,color: Colors.red)
              ),
            ));

  }
}

String lucky(){
  var random=Random();
  int lucky_no=random.nextInt(10);
  return "lucky number = $lucky_no";
}
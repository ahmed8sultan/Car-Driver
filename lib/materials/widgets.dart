
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zanet_iot/screens/bluetooth/bluetooth.dart';
import 'package:zanet_iot/screens/drive.dart';

Widget textbutton(
    String text,
    context
    ) =>Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30),
      child: Container(
        height: 60,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Color(0xff3282B8),
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: FlatButton(
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return bluetooth();
            }));},


        child: Text(text,style: TextStyle(color: Colors.white,fontSize: 30)),


),
      ),
    );
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zanet_iot/materials/widgets.dart';
import 'package:zanet_iot/screens/help.dart';

import 'drive.dart';




class mainscreen extends StatelessWidget {
  const mainscreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return SafeArea(top: false,
      child: Container(
        color: Color(0xffBBE1FA),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Image(image: AssetImage('assets/logoo.png')),

            textbutton('DRIVE',context),
            textbutton('ABOUT US',context),

          ],
        ),
      ),
    );
  }
}

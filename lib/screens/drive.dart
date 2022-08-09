import 'package:control_pad/control_pad.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Drive extends StatelessWidget {
  const Drive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    JoystickDirectionCallback onDirectionChange(double degrees, double distance){
     // print('degree:${degrees.toStringAsFixed(2)},distance:${distance.toStringAsFixed(2)}');
      if(degrees>=315 || degrees<45 ){
        if(distance>.4)print("forward");

      }
      else if(degrees>=45 && degrees<135 ){
        if(distance>.4)print("right");

      }
      else if(degrees>=135 && degrees<225 ){
        if(distance>.4)print("back");

      }
      else if(degrees>=225 && degrees<315 ){
        if(distance>.4)print("left");

      }
    };
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
    return Scaffold(
        body: Container(
      color: Colors.redAccent,
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [JoystickView(onDirectionChanged: onDirectionChange,backgroundColor: Color(0xff0F4C75),showArrows: false,)],
        ),
      ),
    ));
  }
}

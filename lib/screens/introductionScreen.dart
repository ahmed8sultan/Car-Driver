import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:zanet_iot/screens/mScreen.dart';


class introScreen extends StatelessWidget {
  const introScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return SafeArea(
        top: false,
        child: Stack(
      children: [        Opacity(opacity: 1.0,child: Image.asset('assets/firstback.png',fit: BoxFit.cover,height: 1000,)),
        Opacity(opacity: 1.0,
          child: IntroductionScreen(

          done: Text('START'),
          globalBackgroundColor: Color(0xff),
          onDone:(){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>mainscreen()));
          } ,
          showSkipButton: true,showNextButton: true,skip:Text("SKIP",style: TextStyle(color: Colors.white,fontSize: 25)),next: Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 40),
//globalBackgroundColor: Color(0xffBBE1FA),
          dotsDecorator: DotsDecorator(
            size: Size(10,10),
            activeSize: Size(20,10),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25)
            )
          ),

          pages: [


            PageViewModel(
                title: "Hello",
                body: "Welcome to the future",


            ),
          ],
      ),
        ),
      ],
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:grocery/UI/screen2.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _HomeState();
}

class _HomeState extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100, left: 73.29),
              child: GestureDetector(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen2()));
              },
                child: SizedBox(
                  width: 54.70,
                  height: 63.61,
                  child: Image.asset("assets/carrot.png"),
                ),
              ),
            ),Column(children: [Padding(
              padding: EdgeInsets.only(top: 364,left: 5),
              child: Text(
                'nectar',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,


                ),
              ),
            ),Padding(
              padding:EdgeInsets.only(top:0.1,left: 5) ,
              child: Text(
                'online groceriet',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,


                ),
              ),
            )],)
          ],
        ));
  }
}

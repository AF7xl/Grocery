import 'package:flutter/material.dart';
import 'package:grocery/UI/screen3.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _HomeState();
}

class _HomeState extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/boy.png"),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle),
      child: Column(
        children: [
          Container(
            width: 414,
            height: 441.97,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: [Color(0x000D1727), Color(0xFF848484)],
              ),
            ),
          ),
          SizedBox(
            width: 50,
            height: 60,
            child: Image.asset("assets/carrot.png"),
          ),const Text(
            'Welcome \nto our store',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontFamily: 'Gilroy',
              fontWeight: FontWeight.w600,

            ),
          ),const Text(
            'Ger your groceries in as fast as one hour',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xB2FCFCFC),
              fontSize: 16,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w400,

            ),
          ),GestureDetector(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen3()));
          },
            child: Container(
              width: 353,
              height: 67,
              decoration: ShapeDecoration(
                color: Color(0xFF53B175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),child: const Center(
                child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFF9FF),
                  fontSize: 18,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0.06,
                ),
                          ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

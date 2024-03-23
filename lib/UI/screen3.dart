import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/Bloc/signupbloc_bloc.dart';
import 'package:grocery/UI/Bottom%20navigator%20bar.dart';
import 'package:grocery/UI/home1.dart';
import 'package:grocery/UI/signup.dart';

import '../Bloc/signinbloc_bloc.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  bool passwordObscured = true;
TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 150),
            child: Container(
                width: 47.844,
                height: 55.636,
                child: Image.asset("assets/carr.png")),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100, left: 25),
            child: Text(
              'Loging',
              style: TextStyle(
                color: Color(0xFF181725),
                fontSize: 26,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2, left: 25),
            child: Text(
              'Enter your emails and password',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 25),
            child: Text(
              'Email',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 24),
            child: TextFormField(controller:controller),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 25),
            child: Text(
              'Password',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 24),
            child: TextField(
              obscureText: passwordObscured,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordObscured = !passwordObscured;
                  });
                },
                icon: Icon(
                  Icons.visibility_off,
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 200),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color(0xFF181725),
                fontSize: 14,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 20),
            child: Container(
              width: 364,
              height: 67,
              decoration: ShapeDecoration(
                color: Color(0xFF53B175),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              child: BlocListener(
                listener: (BuildContext context, state) {
                  if (state is SigninblocStateLoading) {
                    print("loading");
                  }
                  if (state is SigninblocStateError) {
                    Text("error");
                  }
                  if (state is SigninblocStateLoaded) {
                    GestureDetector(onTap: () { print(controller.text);
                    BlocProvider.of<Signinbloc>(context)
                        .add(Fetchsignin(email:controller.text,password:controller.text ));
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => bnb()));
                    });
                  }
                },
                child: Center(
                  child: Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFFF9FF),
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 93),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => signup()));
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don’t have an account? ',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'Singup',
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

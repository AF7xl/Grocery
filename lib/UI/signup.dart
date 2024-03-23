import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery/UI/home1.dart';
import 'package:grocery/UI/screen3.dart';

import '../Bloc/signupbloc_bloc.dart';
import 'Bottom navigator bar.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool passwordObscured = true;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25, left: 150),
              child: Container(
                  width: 47.844,
                  height: 55.636,
                  child: Image.asset("assets/carr.png")),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60, left: 25),
              child: Text(
                'Sign Up',
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
                'Enter your credentials to continue',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 25),
              child: Text(
                'Username',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 24),
              child: TextFormField(
                controller: controller,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 25),
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
              padding: EdgeInsets.only(top: 5, left: 24),
              child: TextFormField(controller: controller),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 25),
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
              padding: EdgeInsets.only(top: 5, left: 24),
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
              padding: EdgeInsets.only(top: 10, left: 25),
              child: Text(
                'Phone number',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: 24),
              child: TextFormField(controller: controller),
            ),
            Center(
              child: SizedBox(
                width: 358.62,
                height: 38.97,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continuing you agree to our',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service\n',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BlocListener<SignupblocBloc, SignupblocState>(
              listener: (BuildContext context, state) {
                if (state is SignupblocStateLoading) {
                  print("loading");
                }
                if (state is SignupblocStateError) {
                  Text("error");
                }
                if (state is SignupblocStateLoaded) {
                  GestureDetector(onTap: () {
                    print(controller.text);
                    BlocProvider.of<SignupblocBloc>(context).add(Fetchsignup(
                        username: controller.text,
                        email: controller.text,
                        password: controller.text,
                        phone: controller.text));
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => bnb()));
                  });
                }
              },
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => bnb()));
                  },
                  child: Container(
                    width: 364,
                    height: 67,
                    decoration: ShapeDecoration(
                      color: Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
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
            ),
            SizedBox(
              width: 241.02,
              height: 14,
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => screen3()));
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Color(0xFF030303),
                            fontSize: 14,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

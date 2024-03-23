import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Text(
      'Favourite',
      style: TextStyle(
          color: Color(0xFF181725),
          fontSize: 30,
          fontFamily: 'Lato-Bold',
          fontWeight: FontWeight.w600,
          decorationColor: Colors.white),
    ),
      Divider(
        color: Colors.black,
      ),Padding(
        padding: EdgeInsets.only(top: 25),
        child: Container(
          color: Colors.white,
          width: 500,
          height: 150,
          child: Row(
            children: [
              Image.asset("assets/pepsi.png"),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 13, left: 5),
                    child: Text('Pepsi',
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 30,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 13, left: 10),
                        child: Container(
                            width: 5,
                            height: 5,
                            child: Icon(
                              CupertinoIcons.minus,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 22),
                        child: Text('1',
                            style: TextStyle(
                              color: Color(0xFF181725),
                              fontSize: 25,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: Container(
                            width: 5,
                            height: 5,
                            child: Icon(
                              CupertinoIcons.add,
                              color: Colors.black,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 150),
                        child: Text(
                          '\$1.99',
                          style: TextStyle(
                            color: Color(0xFF181725),
                            fontSize: 24,
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      )],));
  }
}

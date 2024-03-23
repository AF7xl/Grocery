import 'package:flutter/material.dart';

class beverages extends StatefulWidget {
  const beverages({super.key});

  @override
  State<beverages> createState() => _beveragesState();
}

class _beveragesState extends State<beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [ SizedBox(
                width: 10,
                height: 18,
                child: Image.asset("assets/backarrow.png")),Padding(
                  padding: EdgeInsets.only(top: 8.3,left:122 ),
                  child: Text(
                                'Beverages',
                                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 20,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                  height: 0.04,
                                ),
                              ),
                ),],
          ),GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            children: List.generate(
              6,
                  (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    child: Container(
                      width: 173.32,
                      height: 248.51,
                      decoration: BoxDecoration(
                        color: Color(0x3FD3B0E0),
                        image: DecorationImage(
                          image: NetworkImage('img.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2, left: 22),
                            child: Container(
                                width: 80,
                                height: 50,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 27,left: 15),
                                  child: Container( width: 111.38,
                                      height: 74.90,child: Image.asset("assets/pepsi.png")),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2, left: 8),
                            child: Padding(
                              padding: EdgeInsets.only(top: 36,left: 20),
                              child: Text(
                                'pepsi',
                                style: TextStyle(
                                  color: Color(0xFF181725),
                                  fontSize: 16,
                                  fontFamily: 'Gilroy-Bold',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),Row(children: [SizedBox(
                            width: 52.13,
                            child: Text(
                              '\$1.99',
                              style: TextStyle(
                                color: Color(0xFF181725),
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,

                              ),
                            ),
                          ),Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Image.asset("assets/add.png"),
                          )],)
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

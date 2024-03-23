import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/UI/filters.dart';

class explore extends StatefulWidget {
  const explore({super.key});

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8,left: 100),
            child: GestureDetector(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>filters()));
            },
              child: Text(
                'Find Products',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 20,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20,left: 5),
            child: CupertinoSearchTextField(),
          ),
          GridView.count(
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
                                      height: 74.90,child: Image.asset("assets/meat.png")),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2, left: 8),
                            child: Padding(
                              padding: EdgeInsets.only(top: 36,left: 20),
                              child: Text(
                                'Meat&Fish',
                                style: TextStyle(
                                  color: Color(0xFF181725),
                                  fontSize: 16,
                                  fontFamily: 'Gilroy-Bold',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
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

import 'package:flutter/material.dart';

class filters extends StatefulWidget {
  const filters({super.key});

  @override
  State<filters> createState() => _filtersState();
}

class _filtersState extends State<filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.cancel_outlined),
                  Text(
                    'Filters',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 20,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Text(
                'Filters',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 20,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24.07,
                    height: 24.07,
                    decoration: ShapeDecoration(
                      color: Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Text(
                    'Eggs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF53B175),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24.07,
                    height: 24.07,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'Noodles & Pasta',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24.07,
                    height: 24.07,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'Chips & Crisps',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),
              Container(
                width: 24.07,
                height: 24.07,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(
                'Fast Food',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,

                ),
              ),
              Text(
                'Brand',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 24,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,

                ),
              ),
              Row(
                children: [
                  Container(
                    width: 24.07,
                    height: 24.07,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFC2C2C2)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'Individual Callection',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 13.93,
                    height: 9.85,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/14x10"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Cocola',
                    style: TextStyle(
                      color: Color(0xFF53B175),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24.07,
                    height: 24.07,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.50, color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Text(
                    'Ifad',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 16,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,

                    ),
                  )
                ],
              ),Row(children: [Container(
                width: 24.07,
                height: 24.07,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.50, color: Color(0xFFB1B1B1)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),Text(
                'Kazi Farmas',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,

                ),
              )],)
            ],
          )
        ],
      ),
    );
  }
}

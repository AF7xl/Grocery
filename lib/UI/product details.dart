import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/UI/home1.dart';

class productdetails extends StatefulWidget {
  const productdetails({super.key});

  @override
  State<productdetails> createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 4.83),
          child: CarouselSlider.builder(
            itemCount: 15,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
              width: 413.60,
              height: 371.44,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: GestureDetector( onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => home1()));
                    },
                      child: SizedBox(
                          width: 10,
                          height: 18,
                          child: Image.asset("assets/backarrow.png")),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 250,
                      height: 100,
                      child: Image.asset("assets/apple.png"),
                    ),
                  )
                ],
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 15),
          child: SizedBox(
            width: 209.43,
            child: Text(
              'Naturel Red Apple',
              style: TextStyle(
                color: Color(0xFF181725),
                fontSize: 24,
                fontFamily: 'Gilroy-Bold',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15),
          child: SizedBox(
            width: 82.59,
            height: 14.89,
            child: Text(
              '1kg, Price',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                height: 0.07,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 51, left: 15),
              child: Icon(CupertinoIcons.minus),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, left: 15),
              child: Container(
                width: 45.67,
                height: 45.67,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFE2E2E2)),
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 18,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50, left: 15),
              child: Icon(CupertinoIcons.add),
            ),
            Padding(
              padding: EdgeInsets.only(top: 65, left: 100),
              child: Text(
                '\$4.99',
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 24,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top:48,left: 15),
          child: SizedBox(
            width: 108.50,
            child: Text(
              'Product Detail',
              style: TextStyle(
                color: Color(0xFF181725),
                fontSize: 16,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:3,left: 15),
          child: SizedBox(
            width: 358.99,
            child: Text(
              'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 13,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:100,left: 15),
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
                'Add To Basket',
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
    ));
  }
}

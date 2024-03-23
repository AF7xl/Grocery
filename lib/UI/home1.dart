import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/UI/cart.dart';
import 'package:grocery/UI/explore.dart';
import 'package:grocery/UI/product%20details.dart';

import 'Beverages.dart';

class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}

class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextFormField(),
              ),
              CarouselSlider.builder(
                itemCount: 15,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  child: Row(
                    children: [
                      Container(
                        width: 122.359,
                        height: 105.123,
                        child: Image.asset("assets/1.png"),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50),
                            child: Text('Fresh Vegetables',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF030303),
                                  fontSize: 20,
                                  fontFamily: 'Aclonica',
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text('Get Up To 40% OFF',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF53B175),
                                  fontSize: 14,
                                  fontFamily: 'Airbnb Cereal App',
                                  fontWeight: FontWeight.w500,
                                )),
                          )
                        ],
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
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Products',
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 24,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: List.generate(
                  4,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => productdetails()));
                        },
                        child: Container(
                          width: 173.32,
                          height: 248.51,
                          decoration: BoxDecoration(
                            color: Colors.white70,
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
                                child: Center(
                                  child: Container(
                                      width: 80,
                                      height: 50,
                                      child: Image.asset("assets/apple.png")),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2, left: 8),
                                child: Text(
                                  'Red Apple',
                                  style: TextStyle(
                                    color: Color(0xFF181725),
                                    fontSize: 16,
                                    fontFamily: 'Gilroy-Bold',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2, left: 8),
                                child: Text(
                                  '1kg, Priceg',
                                  style: TextStyle(
                                    color: Color(0xFF7C7C7C),
                                    fontSize: 14,
                                    fontFamily: 'Gilroy-Medium',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2, left: 8),
                                    child: Text(
                                      '\$4.99',
                                      style: TextStyle(
                                        color: Color(0xFF181725),
                                        fontSize: 18,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        height: 0.06,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Image.asset("assets/add.png"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),bottomNavigationBar: BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "Search"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border_outlined,
          ),
          label: "Favourite"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_rounded,
          ),
          label: "Account"),
    ]),
    );
  }
}

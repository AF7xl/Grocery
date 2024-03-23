import 'package:flutter/material.dart';
import 'package:grocery/UI/cart.dart';
import 'package:grocery/UI/explore.dart';
import 'package:grocery/UI/favourite.dart';
import 'package:grocery/UI/profile.dart';
import 'package:grocery/UI/screen1.dart';

import 'home1.dart';

class bnb extends StatefulWidget {
  const bnb({super.key});

  @override
  State<bnb> createState() => _bnbState();
}
int currentIndex=0;
final screens=[const home1(),const explore(),const cart(),const favourite(),const profile()];
class _bnbState extends State<bnb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xffFF4400),
          unselectedItemColor: Color(0xff79747E),
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
              print(currentIndex);
            });
          },
          items: const [
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
          ]),body: screens[currentIndex],
    );
  }
}

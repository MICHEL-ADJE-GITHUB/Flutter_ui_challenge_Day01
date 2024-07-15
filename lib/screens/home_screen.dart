import 'package:day_1_app/widgets/promo_items_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/bottom_promo_items_widget.dart';

List<PromoItem> promoItems = [
  PromoItem(
    imagePath: 'assets/images/one.jpg',
  ),
  PromoItem(
    imagePath: 'assets/images/two.jpg',
  ),
  PromoItem(
    imagePath: 'assets/images/three.jpg',
  ),
  PromoItem(
    imagePath: 'assets/images/four.jpg',
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 232, 232),
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          size: 35,
        ),
        backgroundColor: Colors.white,
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("I'm the drawer"),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top part
            Container(
              height: 25.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find your",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18.sp,
                          ),
                        ),
                        Text(
                          "INSPIRATION",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 233, 232, 232),
                          hintText: "Search you're looking for",
                          prefixIcon: const Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            // bottom part
            Container(
              margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Promo Today",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: promoItems,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      BottomPromoItem(
                        imagePath: 'assets/images/three.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

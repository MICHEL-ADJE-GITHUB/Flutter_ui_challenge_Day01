import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomPromoItem extends StatelessWidget {
  BottomPromoItem({super.key, required this.imagePath});

  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 20.h,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 20.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: Text(
              "Best Design",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

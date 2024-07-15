import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PromoItem extends StatelessWidget {
  PromoItem({super.key, required this.imagePath});

  String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Stack(
        children: [
          Container(
            height: 30.h,
            width: 45.w,
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
              height: 18.h,
              width: 45.w,
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
        ],
      ),
    );
  }
}

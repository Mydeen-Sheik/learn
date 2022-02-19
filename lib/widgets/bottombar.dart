import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';

class CategoryBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2),
              offset: Offset.zero),
        ],
      ),
      height: 80,
      // padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: AppColors.Main_Color,
                  size: 30,
                ),
                onPressed: () {
                  Navigator;
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: AppColors.Main_Color,
                  size: 30,
                ),
                onPressed: () {
                  Navigator;
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: AppColors.Main_Color,
                  size: 30,
                ),
                onPressed: () {
                  Navigator;
                },
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.supervised_user_circle_rounded,
                  color: AppColors.Main_Color,
                  size: 30,
                ),
                onPressed: () {
                  Navigator;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

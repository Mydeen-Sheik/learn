import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/helper/iconhelper.dart';
import 'package:learn/main.dart';
import 'package:learn/model/category.dart';
import 'package:learn/model/subcategory.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.Main_Color,
        name: "Mydeen",
        imgName: "ux",
        icon: IconFontHelp.HOME,
        subCategories: [
          SubCategory(
            color: AppColors.Main_Color,
            name: "Mydeen",
            imgName: "ux",
            icon: IconFontHelp.HOME,
          ),
          SubCategory(
            color: AppColors.Main_Color,
            name: "Mydeen",
            imgName: "ux",
            icon: IconFontHelp.HOME,
          ),
          SubCategory(
            color: AppColors.Main_Color,
            name: "sheik",
            imgName: "ux",
            icon: IconFontHelp.HOME,
          ),
          SubCategory(
            color: AppColors.Main_Color,
            name: "Kathar",
            imgName: "ux",
            icon: IconFontHelp.HOME,
          ),
        ],
      ),
      Category(
          color: AppColors.Main_Color,
          name: "Abdul",
          imgName: "ux",
          icon: IconFontHelp.MOB,
          subCategories: []),
      Category(
          color: AppColors.Main_Color,
          name: "Kathar",
          imgName: "ux",
          icon: IconFontHelp.MUSIC,
          subCategories: []),
      Category(
          color: AppColors.Main_Color,
          name: "Mydeen",
          imgName: "ux",
          icon: IconFontHelp.HOME,
          subCategories: []),
      Category(
          color: AppColors.Main_Color,
          name: "Abdul",
          imgName: "ux",
          icon: IconFontHelp.MOB,
          subCategories: []),
      Category(
          color: AppColors.Main_Color,
          name: "Kathar",
          imgName: "ux",
          icon: IconFontHelp.MUSIC,
          subCategories: []),
    ];
  }
}

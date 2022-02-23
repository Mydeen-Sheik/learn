import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/helper/iconhelper.dart';
import 'package:learn/main.dart';
import 'package:learn/model/category.dart';
import 'package:learn/model/subcategory.dart';

class Utils {
  static List<UaeDubai> getMockedCategories() {
    return [
      UaeDubai(
        name: "Hotel Blue Lagoon",
        subName: "Chicago",
        imgName: "li1",
        subCategories: [],
      ),
      UaeDubai(
        name: "Hotel Blue Lagoon",
        subName: "Chicago",
        imgName: "li2",
        subCategories: [],
      ),
      UaeDubai(
        name: "Hotel Blue Lagoon",
        subName: "Chicago",
        imgName: "li3",
        subCategories: [],
      ),
      UaeDubai(
        name: "Hotel Blue Lagoon",
        subName: "Chicago",
        imgName: "li4",
        subCategories: [],
      ),
      UaeDubai(
        name: "Hotel Blue Lagoon",
        subName: "Chicago",
        imgName: "li5",
        subCategories: [],
      ),
    ];
  }
}

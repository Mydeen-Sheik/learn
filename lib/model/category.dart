import 'dart:ui';

class Category {
  String name;
  String icon;
  Color color;
  String imgName;
  List<SubCategory> subCategories;

  Category({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
    required this.subCategories,
  });
}

class SubCategory {
  String name;
  String icon;
  Color color;
  String imgName;
  SubCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
  });
}

class UaeDubai {
  String name;
  String subName;
  String imgName;
  List<SubCategory> subCategories;

  UaeDubai({
    required this.name,
    required this.subName,
    required this.imgName,
    required this.subCategories,
  });
}

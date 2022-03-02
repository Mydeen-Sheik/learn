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

class CategoryList {
  String name;
  String iconImage;
  String subtitle;
  String imgName;
  String offLabel;
  String offAmt;

  CategoryList({
    required this.name,
    required this.iconImage,
    required this.subtitle,
    required this.imgName,
    required this.offLabel,
    required this.offAmt,
  });
}

class Plans {
  String time;
  String title;
  String description;
  String imgName;

  Plans({
    required this.time,
    required this.title,
    required this.description,
    required this.imgName,
  });
}

class Actived {
  String price;
  String title;
  String imgNme;

  Actived({
    required this.price,
    required this.title,
    required this.imgNme,
  });
}

class HolidayCate {
  String price;
  String title;
  String imgNme;

  HolidayCate({
    required this.price,
    required this.title,
    required this.imgNme,
  });
}

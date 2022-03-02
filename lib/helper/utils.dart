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

class Util {
  static List<CategoryList> getMockedCategories() {
    return [
      CategoryList(
        name: "ORXY Hotel",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "icc",
        offAmt: "10%",
        offLabel: 'Off',
      ),
      CategoryList(
        name: "RIU Hotels & RESORTS",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "riu",
        offAmt: "10%",
        offLabel: "Cash Back",
      ),
      CategoryList(
        name: "RIU Hotels & RESORTS",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "riu",
        offAmt: "10%",
        offLabel: "Cash Back",
      ),
      CategoryList(
        name: "RIU Hotels & RESORTS",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "riu",
        offAmt: "10%",
        offLabel: 'Off',
      ),
      CategoryList(
        name: "RIU Hotels & RESORTS",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "riu",
        offAmt: "10%",
        offLabel: "Cash Back",
      ),
      CategoryList(
        name: "RIU Hotels & RESORTS",
        subtitle: "Abu Dhabi, Dubai",
        imgName: "prolist",
        iconImage: "riu",
        offAmt: "10%",
        offLabel: "Cash Back",
      ),
    ];
  }
}

class Dayplan {
  static List<Plans> getMockedCategories() {
    return [
      Plans(
        time: '9.00 AM',
        title: "Breakfast",
        description:
            "Aliquam interdum ipsum et tempor. Phasellus odiofelis, sceler.",
        imgName: "cfee",
      ),
      Plans(
        time: '11.00 AM',
        title: "Camel Riding",
        description:
            "Aliquam interdum ipsum et tempor. Phasellus odiofelis, sceler.",
        imgName: "treas",
      ),
    ];
  }
}

// const Img_List = [
//   active
//   "images/mas1.jpeg",
//   "images/mas2.jpeg",
//   "images/mas3.jpeg",
//   "images/mas4.jpeg",
//   "images/mas5.jpeg",
//   "images/mas1.jpeg",
//   "images/mas2.jpeg",
// ];

class ActiveCat {
  static List<Actived> getMockedCategories() {
    return [
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl2.jpeg",
      ),
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl3.jpeg",
      ),
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl2.jpeg",
      ),
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl1.jpeg",
      ),
      Actived(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
    ];
  }
}

class HolidayPlanCate {
  static List<HolidayCate> getMockedCategories() {
    return [
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
      HolidayCate(
        price: "AED 3199",
        title: "Dubai Museum",
        imgNme: "images/hl4.jpeg",
      ),
    ];
  }
}

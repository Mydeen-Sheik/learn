import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/helper/iconhelper.dart';
import 'package:learn/main.dart';
import 'package:learn/model/category.dart';
import 'package:learn/helper/utils.dart';
import 'package:learn/pages/selectcategorypage.dart';
import 'package:learn/widgets/bottombar.dart';
import 'package:learn/widgets/categoriesicon.dart';

import 'categorycard.dart';

class CategoryList extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();

  get borer => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: IconFont(
          iconName: IconFontHelp.HOME,
          size: 20,
          color: AppColors.Main_Color,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.Main_Color),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('images/logo.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Select Una Categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectCategoryPage(
                                      selectCategory:
                                          Utils.getMockedCategories()[0])));
                        },
                      );
                    },
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CategoryBottomBar(),
            )
          ],
        ),
      ),
    );
  }
}

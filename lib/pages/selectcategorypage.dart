import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/model/category.dart';
import 'package:learn/widgets/categoriesicon.dart';

class SelectCategoryPage extends StatelessWidget {
  Category selectCategory;

  SelectCategoryPage({required this.selectCategory});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.Main_Color),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectCategory.color,
                  iconName: this.selectCategory.icon,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  this.selectCategory.name,
                  style: TextStyle(
                    color: this.selectCategory.color,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                    this.selectCategory.subCategories.length, (index) {
                  return Text(this.selectCategory.subCategories[index].name);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

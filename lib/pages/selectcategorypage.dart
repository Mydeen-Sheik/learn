import 'package:flutter/material.dart';
import 'package:learn/helper/appcolors.dart';
import 'package:learn/model/category.dart';

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
        child: Center(child: Text(this.selectCategory.name)),
      ),
    );
  }
}

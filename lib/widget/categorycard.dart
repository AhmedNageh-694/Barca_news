import 'package:flutter/material.dart';
import 'package:news_app/models/categorymodel.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
            image: AssetImage(categoryModel.image),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150,left: 10),
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'CaveatBrush'
            ),
          ),
        ),
      ),
    );
  }
}

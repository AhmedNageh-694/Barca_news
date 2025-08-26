import 'package:flutter/material.dart';
import 'package:news_app/models/categorymodel.dart';
import 'package:news_app/widget/categorycard.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/images/barca_team.jpg", categoryName: "player"),
    CategoryModel(image: "assets/images/camp_no.jpeg", categoryName: "General"),
    CategoryModel(image: "assets/images/health_barca.jpg", categoryName: "Health"),

  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Categorycard(categoryModel: categories[index]);
        },
      ),
    );
  }
}

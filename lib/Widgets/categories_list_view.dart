import 'package:flutter/material.dart';
import '../Models/category_model.dart';
import 'category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categoryList = const [
    CategoryModel(
      image: 'assets/business.jpg',
      title: 'Business',
      categoryType: 'business',
    ),
    CategoryModel(
      image: 'assets/entertaiment.avif',
      title: 'Entertainment',
      categoryType: 'entertainment',
    ),
    CategoryModel(
      image: 'assets/health.avif',
      title: 'Health',
      categoryType: 'health',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      title: 'Science',
      categoryType: 'science',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      title: 'Sports',
      categoryType: 'sports',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      title: 'Technology',
      categoryType: 'technology',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            category: categoryList[index],
          );
        },
      ),
    );
  }
}

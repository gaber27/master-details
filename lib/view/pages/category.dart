import 'package:flutter/material.dart';

import '../../model/category_model.dart';

class CategoryPage extends StatelessWidget {
  final List<Category> categories;
  final Category? selectedCategory;
  final Function(Category) isSelected;

  CategoryPage({
    required this.categories,
    required this.selectedCategory,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (ctx, index) {
        final category = categories[index];
        return ListTile(
          title: Text(category.name),
          onTap: () {
            isSelected(category);
          },
          selected: category == selectedCategory,
        );
      },
    );
  }
}

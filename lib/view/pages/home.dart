
import 'package:flutter/material.dart';
import 'package:interv/constant/color.dart';
import 'package:interv/view/pages/category.dart';
import 'package:interv/view/pages/item.dart';

import '../../model/category_model.dart';
import '../../model/item_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> categories = [
    Category('Car', [
      Item('Toyota', 'Description for Toyota', 200.50),
    ]),
    Category('Motorcycle', [
      Item('Harley-Davidson', 'Description for Harley-Davidson', 300.00),

    ]),
  ];

  Category? selectedCategory;
  Item? selectedItem;

  @override
  void initState() {
    super.initState();
    if (categories.isNotEmpty) {
      selectedCategory = categories[0];
      if (selectedCategory!.items.isNotEmpty) {
        selectedItem = selectedCategory!.items[0];
      }
    }
  }

  void selectCategory(Category category) {
    setState(() {
      selectedCategory = category;
      if (category.items.isNotEmpty) {
        selectedItem = category.items[0];
      }
    });
  }

  void selectItem(Item item) {
    setState(() {
      selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Master-Detail',
        style: TextStyle(
          color: mainColor
        ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CategoryPage(
              categories: categories,
              selectedCategory: selectedCategory,
              isSelected: selectCategory,
            ),
          ),
          Container(width: 2,
          height: MediaQuery.sizeOf(context).height- 100,
          color: Colors.grey,
          ),
          Expanded(
            flex: 5,
            child: ItemDetail(selectedItem: selectedItem),
          ),
        ],
      ),
    );
  }
}
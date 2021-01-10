import 'package:flutter/material.dart';

import './data/mock_categories.dart';
import './category_item.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Meals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: MOCK_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}

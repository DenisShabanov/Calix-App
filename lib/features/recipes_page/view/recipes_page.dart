import 'package:calix/features/recipes_page/widgets/recipe_tabs.dart';
import 'package:calix/features/recipes_page/widgets/recipe_text_field.dart';
import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,

          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeTextField(),
                const SizedBox(height: 20),
                RecipeTabs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:calix/features/recipes_page/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeTabs extends StatefulWidget {
  const RecipeTabs({super.key});

  @override
  State<RecipeTabs> createState() => _RecipeTabstState();
}

class _RecipeTabstState extends State<RecipeTabs> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: DefaultTabController(
        length: 7,
        child: Column(
          children: [
            TabBar(
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              dividerHeight: 0,
              isScrollable: true,
              labelStyle: textTheme.bodyMedium,
              indicatorColor: Color.fromARGB(255, 60, 130, 243),
              labelPadding: EdgeInsets.only(right: 20),
              labelColor: Color.fromARGB(255, 60, 130, 243),
              indicatorPadding: EdgeInsets.zero,
              tabs: const [
                Tab(child: Text('All')),
                Tab(child: Text('Brekfast')),
                Tab(child: Text('Lunch')),
                Tab(child: Text('Dinner')),
                Tab(child: Text('Snacks')),
                Tab(child: Text('Vegetarian')),
                Tab(child: Text('Keto')),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: TabBarView(
                children: [
                  Align(alignment: Alignment.topLeft, child: RecipeCard()),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(Icons.apple, size: 100),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

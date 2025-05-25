import 'package:calix/features/journal_page/widgets/todays_meals.dart';
import 'package:calix/features/journal_page/widgets/todays_nutrition_tracker.dart';
import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Denis!',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    'Track your nutrition progress',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 60, 130, 243),
                child: Text('D', style: Theme.of(context).textTheme.bodyLarge),
              ),
            ],
          ),
          const SizedBox(height: 30),
          TodaysNutritionTracker(),
          TodaysMeals(),
        ],
      ),
    );
  }
}

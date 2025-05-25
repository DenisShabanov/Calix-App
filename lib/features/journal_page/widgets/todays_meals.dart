import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TodaysMeals extends StatefulWidget {
  const TodaysMeals({super.key});

  @override
  State<TodaysMeals> createState() => _TodaysMealsState();
}

class _TodaysMealsState extends State<TodaysMeals> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today\'s Meals',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Color.fromARGB(255, 60, 130, 243),
              ),
            ),
            _buildMealTile(
              iconPath: 'assets/icons/meals_icons/egg-fried.svg',
              title: 'Breakfast',
              subtitle: '610/630',
              iconColor: Colors.yellow.shade400,
            ),
            Divider(),
            _buildMealTile(
              iconPath: 'assets/icons/meals_icons/soup.svg',
              title: 'Lunch',
              subtitle: '610/630',
              iconColor: Colors.orange.shade400,
            ),
            Divider(),
            _buildMealTile(
              iconPath: 'assets/icons/meals_icons/steak.svg',
              title: 'Dinner',
              subtitle: '610/630',
              iconColor: Colors.purple.shade400,
            ),
            Divider(),
            _buildMealTile(
              iconPath: 'assets/icons/meals_icons/apple-pie.svg',
              title: 'Snacks',
              subtitle: '610/630',
              iconColor: Colors.green.shade400,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMealTile({
    required String iconPath,
    required String title,
    required String subtitle,
    required Color iconColor,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: SvgPicture.asset(
        iconPath,
        width: 30,
        height: 30,
        colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.bodySmall),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white),
        style: IconButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 60, 130, 243),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodaysNutritionTracker extends StatelessWidget {
  const TodaysNutritionTracker({super.key});

  final List<NutrientData> nutrients = const [
    NutrientData(
      name: 'Calories',
      current: '1000',
      total: '2000',
      unit: 'g',
      value: 0.5,
    ),
    NutrientData(
      name: 'Protein',
      current: '45',
      total: '120',
      unit: 'g',
      value: 0.3,
    ),
    NutrientData(
      name: 'Carbs',
      current: '120',
      total: '200',
      unit: 'g',
      value: 0.6,
    ),
    NutrientData(
      name: 'Fat',
      current: '35',
      total: '60',
      unit: 'g',
      value: 0.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(
      context,
    ).textTheme.bodySmall?.copyWith(color: Colors.white);

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Today\'s Nutrition',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: const Color.fromARGB(255, 60, 130, 243),
            ),
          ),
          const SizedBox(height: 20),
          ...nutrients.map(
            (nutrient) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(nutrient.name, style: textStyle),
                      Text(
                        '${nutrient.current}/${nutrient.total}${nutrient.unit}',
                        style: textStyle,
                      ),
                    ],
                  ),
                  LinearProgressIndicator(
                    backgroundColor: const Color.fromARGB(255, 175, 218, 252),
                    color: const Color.fromARGB(255, 60, 130, 243),
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 8,
                    value: nutrient.value,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NutrientData {
  final String name;
  final String current;
  final String total;
  final String unit;
  final double value;

  const NutrientData({
    required this.name,
    required this.current,
    required this.total,
    required this.unit,
    required this.value,
  });
}

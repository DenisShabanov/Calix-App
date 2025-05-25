import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecipeTextField extends StatelessWidget {
  const RecipeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TextField(
      cursorColor: const Color.fromARGB(255, 60, 130, 243),
      maxLines: 1,
      decoration: InputDecoration(
        isDense: true,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            width: 18,
            height: 18,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        hintText: 'Search you recipe',
        hintStyle: textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 60, 130, 243),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

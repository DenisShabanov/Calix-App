import 'package:calix/features/profile_page/widgets/option_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        CircleAvatar(
          radius: 35,
          backgroundColor: Color.fromARGB(255, 24, 44, 88),
          child: SvgPicture.asset(
            'assets/icons/bottom_navigation_bar_icons/user.svg',
            width: 35,
            height: 35,
            colorFilter: ColorFilter.mode(
              Color.fromARGB(255, 60, 130, 243),
              BlendMode.srcIn,
            ),
          ),
        ),
        const SizedBox(height: 15),
        Text('Denis Shabanov', style: textTheme.bodyMedium),
        Text('example@yandex.ru', style: textTheme.bodySmall),
        const SizedBox(height: 15),
        Divider(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text('188 cm', style: textTheme.bodyMedium),
                Text('Height', style: textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                Text('104 kg', style: textTheme.bodyMedium),
                Text('Weight', style: textTheme.bodySmall),
              ],
            ),
            Column(
              children: [
                Text('21', style: textTheme.bodyMedium),
                Text('Age', style: textTheme.bodySmall),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Divider(),
        const SizedBox(height: 15),
        OptionListTile(),
      ],
    );
  }
}

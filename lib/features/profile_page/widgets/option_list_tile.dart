import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OptionListTile extends StatefulWidget {
  const OptionListTile({super.key});

  @override
  State<OptionListTile> createState() => _OptionListTileState();
}

class _OptionListTileState extends State<OptionListTile> {
  bool _darkmode = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  _buildTile(
                    iconPath: 'assets/icons/profile_icons/file-medical-alt.svg',
                    title: 'Health Data',
                    trailing: Text('Updated'),
                  ),

                  _buildTile(
                    iconPath: 'assets/icons/profile_icons/settings.svg',
                    title: 'Settings',
                  ),
                  _buildTile(
                    iconPath: 'assets/icons/profile_icons/bell.svg',
                    title: 'Notifications',
                  ),
                  _buildSwitchTile(
                    iconPath:
                        _darkmode == false
                            ? 'assets/icons/profile_icons/brightness.svg'
                            : 'assets/icons/profile_icons/moon-stars.svg',
                    title: _darkmode == false ? 'Brigth Mode' : 'Dark Mode',
                    value: _darkmode,
                    onChanged: (val) {
                      setState(() {
                        _darkmode = val;
                      });
                    },
                  ),
                  _buildTile(
                    iconPath: 'assets/icons/profile_icons/interrogation.svg',
                    title: 'Help & Support',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          'assets/icons/profile_icons/exit.svg',
                          width: 15,
                          height: 15,
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        label: Text(
                          'Log out',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //!Метод для того чтобы сделать обычные элементы
  Widget _buildTile({
    required String iconPath,
    required String title,
    Widget? trailing,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          Color.fromARGB(255, 60, 130, 243),
          BlendMode.srcIn,
        ),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      trailing: trailing ?? const Icon(Icons.chevron_right, color: Colors.grey),
    );
  }

  //!Метод для элемента с переключателем темы
  Widget _buildSwitchTile({
    required String iconPath,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          Color.fromARGB(255, 60, 130, 243),
          BlendMode.srcIn,
        ),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
      trailing: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeColor: Color.fromARGB(255, 60, 130, 243),
      ),
    );
  }
}

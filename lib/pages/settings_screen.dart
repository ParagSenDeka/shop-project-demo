import 'package:flutter/material.dart';
import 'package:project_muskan/notifiers/notifiers.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(
      valueListenable: toggleValue,
      builder: (context, value, child) {
        return SettingsList(
          contentPadding: EdgeInsets.all(8.0),
          sections: [
            SettingsSection(
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {
                    toggleValue.value=!toggleValue.value;
                  },
                  initialValue: value,
                  leading: Icon(Icons.format_paint),
                  title: Text('Enable Dark mode'),
                ),
              ],
            ),
          ],
        );
      }
    );
  }
}
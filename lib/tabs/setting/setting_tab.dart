import 'package:flutter/material.dart';
import 'package:islami/app_theme.dart';
import 'package:islami/tabs/setting/setting_porvider.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                settingsProvider.isDark ? 'Light Mode' : 'Dark Mode',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Switch(
                value: settingsProvider.isDark,
                onChanged: (isDark) => settingsProvider
                    .changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light),
                activeTrackColor: AppTheme.gold,
                inactiveTrackColor: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: settingsProvider.language,
                  items: [
                    DropdownMenuItem(
                      value: 'en',
                      child: Text(
                        'English',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'ar',
                      child: Text(
                        'العربيه',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                  onChanged: (selectedLanguage) {
                    if (selectedLanguage == null) return;
                    settingsProvider.changeLanguage(selectedLanguage);
                  },
                  dropdownColor: AppTheme.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

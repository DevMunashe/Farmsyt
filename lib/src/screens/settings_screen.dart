import 'package:flutter/material.dart';
import 'package:farmsyt/main.dart';
import 'package:farmsyt/src/themes.dart';
import 'package:farmsyt/src/utils/converters.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppStateContainer.of(context).theme.primaryColor,
        title: Text("Settings"),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 15),
        color: AppStateContainer.of(context).theme.primaryColor,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Theme",
                style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withOpacity(0.1),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Dark",
                    style: TextStyle(
                        color: AppStateContainer.of(context).theme.accentColor),
                  ),
                  Radio(
                    value: Themes.DARK_THEME_CODE,
                    groupValue: AppStateContainer.of(context).themeCode,
                    onChanged: (value) {
                      AppStateContainer.of(context).updateTheme(value);
                    },
                    activeColor:
                        AppStateContainer.of(context).theme.accentColor,
                  )
                ],
              ),
            ),
            Divider(
              color: AppStateContainer.of(context).theme.primaryColor,
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withOpacity(0.1),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Light",
                    style: TextStyle(
                        color: AppStateContainer.of(context).theme.accentColor),
                  ),
                  Radio(
                    value: Themes.LIGHT_THEME_CODE,
                    groupValue: AppStateContainer.of(context).themeCode,
                    onChanged: (value) {
                      AppStateContainer.of(context).updateTheme(value);
                    },
                    activeColor:
                        AppStateContainer.of(context).theme.accentColor,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15, left: 8, right: 8, bottom: 8),
              child: Text(
                "Unit",
                style: TextStyle(
                  color: AppStateContainer.of(context).theme.accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withOpacity(0.1),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Celsius",
                    style: TextStyle(
                        color: AppStateContainer.of(context).theme.accentColor),
                  ),
                  Radio(
                    value: TemperatureUnit.celsius.index,
                    groupValue:
                        AppStateContainer.of(context).temperatureUnit.index,
                    onChanged: (value) {
                      AppStateContainer.of(context)
                          .updateTemperatureUnit(TemperatureUnit.values[value]);
                    },
                    activeColor:
                        AppStateContainer.of(context).theme.accentColor,
                  )
                ],
              ),
            ),
            Divider(
              color: AppStateContainer.of(context).theme.primaryColor,
              height: 1,
            ),
            Container(
              color: AppStateContainer.of(context)
                  .theme
                  .accentColor
                  .withOpacity(0.1),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Fahrenheit",
                    style: TextStyle(
                        color: AppStateContainer.of(context).theme.accentColor),
                  ),
                  Radio(
                    value: TemperatureUnit.fahrenheit.index,
                    groupValue:
                        AppStateContainer.of(context).temperatureUnit.index,
                    onChanged: (value) {
                      AppStateContainer.of(context)
                          .updateTemperatureUnit(TemperatureUnit.values[value]);
                    },
                    activeColor:
                        AppStateContainer.of(context).theme.accentColor,
                  )
                ],
              ),
            ),
            Divider(
              color: AppStateContainer.of(context).theme.primaryColor,
              height: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withOpacity(0.1),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Kelvin",
                    style: TextStyle(
                        color: AppStateContainer.of(context).theme.accentColor),
                  ),
                  Radio(
                    value: TemperatureUnit.kelvin.index,
                    groupValue:
                        AppStateContainer.of(context).temperatureUnit.index,
                    onChanged: (value) {
                      AppStateContainer.of(context)
                          .updateTemperatureUnit(TemperatureUnit.values[value]);
                    },
                    activeColor:
                        AppStateContainer.of(context).theme.accentColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

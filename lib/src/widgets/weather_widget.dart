import 'package:flutter/material.dart';
import 'package:farmsyt/main.dart';
import 'package:farmsyt/src/model/weather.dart';
import 'package:farmsyt/src/widgets/forecast_horizontal_widget.dart';
import 'package:farmsyt/src/widgets/value_tile.dart';
import 'package:farmsyt/src/widgets/weather_swipe_pager.dart';
import 'package:intl/intl.dart';

class WeatherWidget extends StatelessWidget {
  final Weather weather;

  WeatherWidget({this.weather}) : assert(weather != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView( //replaced the Center widget with Listview to avoid overflowing
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
            Align(
                alignment: Alignment.center,
                child:Text(
            this.weather.cityName.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 5,
                color: AppStateContainer.of(context).theme.accentColor,
                fontSize: 25),
          ),
          
           ),

          // Text(
          //   this.weather.cityName.toUpperCase(),
          //   style: TextStyle(
          //       fontWeight: FontWeight.w900,
          //       letterSpacing: 5,
          //       color: AppStateContainer.of(context).theme.accentColor,
          //       fontSize: 25),
          // ),
          SizedBox(
            height: 20,
          ),

          Align( // will align widgets at center
             alignment: Alignment.center,
                child: Text(
            this.weather.description.toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.w100,
                letterSpacing: 5,
                fontSize: 15,
                color: AppStateContainer.of(context).theme.accentColor),
          ),
          ),
          


          WeatherSwipePager(weather: weather),
          Padding(
            child: Divider(
              color:
                  AppStateContainer.of(context).theme.accentColor.withAlpha(50),
            ),
            padding: EdgeInsets.all(10),
          ),
          ForecastHorizontal(weathers: weather.forecast),
          Padding(
            child: Divider(
              color:
                  AppStateContainer.of(context).theme.accentColor.withAlpha(50),
            ),
            padding: EdgeInsets.all(10),
          ),

          //================ROW containing bottom general info===============
          new SingleChildScrollView(
  scrollDirection: Axis.horizontal,
          child: new Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            ValueTile("wind speed", '${this.weather.windSpeed} m/s'),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                width: 1,
                height: 30,
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withAlpha(50),
              )),
            ),
            ValueTile(
                "sunrise",
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(
                    this.weather.sunrise * 1000))),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Center(
                  child: Container(
                width: 1,
                height: 30,
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withAlpha(50),
              )),
            ),
            ValueTile(
                "sunset",
                DateFormat('h:m a').format(DateTime.fromMillisecondsSinceEpoch(
                    this.weather.sunset * 1000))),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15,),
              child: Center(
                  child: Container(
                width: 1,
                height: 30,
                color: AppStateContainer.of(context)
                    .theme
                    .accentColor
                    .withAlpha(50),
              )),
            ),
            ValueTile("humidity", '${this.weather.humidity}%'),
          ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15, right: 15,bottom: 30),
              
            ),

        ],
      ),
    );
  }
}

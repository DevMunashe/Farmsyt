import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:farmsyt/src/screens/routes.dart';
import 'package:farmsyt/src/screens/weather_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:farmsyt/src/themes.dart';
import 'package:farmsyt/src/utils/constants.dart';
import 'package:farmsyt/src/utils/converters.dart';
import 'package:shared_preferences/shared_preferences.dart';

//own imports
//import 'package:farmsyt/components/horizontal_listview.dart';
import 'package:farmsyt/components/reports.dart';

 

void main(){
   BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(
    AppStateContainer(child: WeatherApp())
    // new MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: HomePage(),
    // )
  );
}

class SimpleBlocDelegate extends BlocDelegate {
  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmsyt',
      theme: AppStateContainer.of(context).theme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: Routes.mainRoute,
    );
  }
}



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

 Widget banner = new Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
        child: new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0)),
            color: Colors.green,
          ),
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            'Manage your farm on the move.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'Indies',
  
          ),
          ),
        ),
      // ),
    //  ),
    );
    Widget image_carousel = new Container(
      height: 150.0, 
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/girl.jpg'),
          AssetImage('images/agriculture.jpg'),
          AssetImage('images/tomato.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 3.0,
        indicatorBgPadding: 4.0,
        autoplayDuration: Duration(seconds: 8),
      )
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text('Farmsyt',style: TextStyle(fontSize: 25,fontFamily: 'Indies')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.refresh, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.account_circle, color: Colors.white), onPressed: (){}),
          ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // drawer header
            new UserAccountsDrawerHeader(
              accountEmail: Text('munasheshonge@gmail.com',style: TextStyle(fontSize: 18,fontFamily: 'Indies',color: Colors.white)), 
              accountName: Text('Munashe Shonge',style: TextStyle(fontSize: 18,fontFamily: 'Indies',color: Colors.white)),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
                decoration: BoxDecoration(
                  color: Colors.green
                ),
              ),

              //body of nav drawer widget
              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Home', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                 
                  ),
                  leading: Icon(Icons.dashboard, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WeatherScreen()),
            );
                  },
                  child: ListTile(
                  title: Text('Weather Forecast', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.wb_sunny, color: Colors.orange,),
                ),
              ),


                InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Disease Forecast', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.bug_report, color: Colors.red),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Market Forecast', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.show_chart, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Consult Expert', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.person, color: Colors.green,),
                ),
              ),

              Divider(), //insert widget separator line

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Yields', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.multiline_chart, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Sales', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.pie_chart, color: Colors.green,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Expenses', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.insert_chart, color: Colors.red,),
                ),
              ),


                  Divider(), //insert widget separator line

                  InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Take Surveys', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.record_voice_over),
                ),
              ),


                   InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Settings', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.settings),
                ),
              ),

               InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('About Farmsyt', style: TextStyle(fontSize: 20, fontFamily: 'Indies',fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(Icons.help),
                ),
              )
          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          banner,
          new Padding(padding: const EdgeInsets.all(2.0),
          //child: new Text('Categories',),
          ), 

          //horizontal listview begins here
         //  HorizontalList(),

         //  new Padding(padding: const EdgeInsets.all(8.0),
         // child: new Text('Dashboard'),),

          //gridview with dashboard report items
          new Container(
            height: 320.0,
            child: Reports(),
          )
        ],
      ),
    );
  }
}

/// top level widget to hold application state
/// state is passed down with an inherited widget
class AppStateContainer extends StatefulWidget {
  final Widget child;

  AppStateContainer({@required this.child});

  @override
  _AppStateContainerState createState() => _AppStateContainerState();

  static _AppStateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
            as _InheritedStateContainer)
        .data;
  }
}

class _AppStateContainerState extends State<AppStateContainer> {
  ThemeData _theme = Themes.getTheme(Themes.DARK_THEME_CODE);
  int themeCode = Themes.DARK_THEME_CODE;
  TemperatureUnit temperatureUnit = TemperatureUnit.celsius;


  @override
  initState() {
    super.initState();
    SharedPreferences.getInstance().then((sharedPref) {
      setState(() {
        themeCode = sharedPref.getInt(CONSTANTS.SHARED_PREF_KEY_THEME) ??
            Themes.DARK_THEME_CODE;
        temperatureUnit = TemperatureUnit.values[
            sharedPref.getInt(CONSTANTS.SHARED_PREF_KEY_TEMPERATURE_UNIT) ??
                TemperatureUnit.celsius.index];
        this._theme = Themes.getTheme(themeCode);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print(theme.accentColor);
    return _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }

  ThemeData get theme => _theme;

  updateTheme(int themeCode) {
    setState(() {
      _theme = Themes.getTheme(themeCode);
      this.themeCode = themeCode;
    });
    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(CONSTANTS.SHARED_PREF_KEY_THEME, themeCode);
    });
  }

  updateTemperatureUnit(TemperatureUnit unit) {
    setState(() {
      this.temperatureUnit = unit;
    });
    SharedPreferences.getInstance().then((sharedPref) {
      sharedPref.setInt(CONSTANTS.SHARED_PREF_KEY_TEMPERATURE_UNIT, unit.index);
    });
  }
}

class _InheritedStateContainer extends InheritedWidget {
  final _AppStateContainerState data;

  const _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(_InheritedStateContainer oldWidget) => true;
}

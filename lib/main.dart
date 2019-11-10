import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//own imports
import 'package:farmsyt/components/horizontal_listview.dart';
import 'package:farmsyt/components/reports.dart';

 

void main(){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
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
        autoplay: false,
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
        title: Text('Farmsyt'),
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
              accountEmail: Text('munasheshonge@gmail.com'), 
              accountName: Text('Munashe Shonge'),
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
                  title: Text('Home'),
                  leading: Icon(Icons.dashboard, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Weather Forecast'),
                  leading: Icon(Icons.wb_sunny, color: Colors.orange,),
                ),
              ),


                InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Disease Forecast'),
                  leading: Icon(Icons.bug_report, color: Colors.red),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Market Forecast'),
                  leading: Icon(Icons.show_chart, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Consult Expert'),
                  leading: Icon(Icons.person, color: Colors.green,),
                ),
              ),

              Divider(), //insert widget separator line

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Yields'),
                  leading: Icon(Icons.multiline_chart, color: Colors.red,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Sales'),
                  leading: Icon(Icons.pie_chart, color: Colors.green,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Expenses'),
                  leading: Icon(Icons.insert_chart, color: Colors.red,),
                ),
              ),


                  Divider(), //insert widget separator line

                  InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Take Surveys'),
                  leading: Icon(Icons.record_voice_over),
                ),
              ),


                   InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),

               InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('About Farmsyt'),
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
          new Padding(padding: const EdgeInsets.all(8.0),
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
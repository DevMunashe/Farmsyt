import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: Text('Farmsyt'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.refresh, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.settings, color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.account_box, color: Colors.white), onPressed: (){}),
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
                  leading: Icon(Icons.home, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Weather Forecast'),
                  leading: Icon(Icons.wb_sunny, color: Colors.green,),
                ),
              ),


                InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Disease Forecast'),
                  leading: Icon(Icons.bug_report, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Market Forecast'),
                  leading: Icon(Icons.attach_money, color: Colors.green,),
                ),
              ),


              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Consult Expert'),
                  leading: Icon(Icons.person, color: Colors.green,),
                ),
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Record Produce'),
                  leading: Icon(Icons.receipt, color: Colors.green,),
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
                  leading: Icon(Icons.show_chart, color: Colors.green,),
                ),
              ),


                  Divider(), //insert widget separator line
                  InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Take Surveys'),
                  leading: Icon(Icons.book, color: Colors.green,),
                ),
              ),


                   InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.green,),
                ),
              ),

               InkWell(
                  onTap: (){},
                  child: ListTile(
                  title: Text('About Farmsyt'),
                  leading: Icon(Icons.help, color: Colors.green,),
                ),
              )
          ],
        ),
      ),
    );
  }
}
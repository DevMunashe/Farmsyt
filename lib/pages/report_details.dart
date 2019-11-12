import 'package:flutter/material.dart';

class ReportDetails extends StatefulWidget {
  final report_detail_name;
  final report_detail_picture;
  final report_detail_status;

  ReportDetails({
    this.report_detail_name,
    this.report_detail_picture,
    this.report_detail_status
  });
  @override
  _ReportDetailsState createState() => _ReportDetailsState();
}

class _ReportDetailsState extends State<ReportDetails> {
  @override
  Widget build(BuildContext context) {

Widget pic_banner = new Padding(
      padding: const EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
        child: new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0)),
            color: Colors.green,
          ),
          padding: const EdgeInsets.all(0.0),
          child: Image.asset(widget.report_detail_picture,
             fit: BoxFit.cover,)
        ),
      // ),
    //  ),
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

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 150.0,
            child: GridTile(
              child: Container(
                // color: Colors.white,
                 child: pic_banner,
              ),

              footer: new Container(
                color: Colors.white30,
                child: ListTile(
                  leading: new Text(widget.report_detail_name,  
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontFamily: 'Indies',color: Colors.white),),

                  // title: new Row(
                  //   children: <Widget>[
                  //     Expanded(
                  //       child: new Text(widget.report_detail_name)
                  //     )
                  //   ],
                  // ),

                  
                ),
              ),
            ),
          ),

// ============= first buttons ============
          new Row(
            children: <Widget>[
              //======= size button ===========
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:   new Text("Location",
                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,fontFamily: 'Indies',color: Colors.black)
                      )
                    ),
                    Expanded(
                      child:   new Icon(Icons.arrow_drop_down)
                    ),
                  ],
                ),
                ),
              ),

 //======= size button ===========
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:   new Text("Day",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,fontFamily: 'Indies',color: Colors.black)
                      )
                    ),
                    Expanded(
                      child:   new Icon(Icons.arrow_drop_down)
                    ),
                  ],
                ),
                ),
              ),

            ],
          ),

// ============= the second buttons ============
          new Row(
            children: <Widget>[
              //======= size button ===========
              
              Expanded(
                
                child: MaterialButton(onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                elevation: 0.2,
                child: new Text("See " + widget.report_detail_name)
                ),
              ),
          new IconButton(icon: Icon(Icons.share),color: Colors.green,onPressed: (){}),


            ],
          ),
            Divider(),
            new ListTile(
              title: new Text("General Advice\n"),
              subtitle: new Text(widget.report_detail_status),
            )
        ],
      ),
    );
  }
}
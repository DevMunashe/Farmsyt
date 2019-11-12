import 'package:flutter/material.dart';
import 'package:farmsyt/pages/report_details.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  var reports_list = [
    {
      "name": "Weather Forecast",
      "picture":"images/sunset.jpg",
      "value": "38 deg",
      "status": "Frequently irrigate your crops in extreme heat and find supplementary water sources for your livestock.\n\n Drink a lot of liquids while you work in the heat and avoid intense exposure to the sun."
    },
     {
      "name": "Market Forecast",
      "picture":"images/veg.jpg",
      "value": "P990",
      "status": "If your perishable produce is near harvesting, look for multiple market avenues before harvesting.\n\n For produce with lower profit margins, sell more volumes to your market."
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: reports_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_rep(
          rep_index: index,
          rep_name: reports_list[index]['name'],
          rep_picture: reports_list[index]['picture'],
         // rep_value: reports_list[index]['value'],
          rep_status: reports_list[index]['status']
           );
         });
}
}

class Single_rep extends StatelessWidget {
  final rep_name;
  final rep_picture;
  //final rep_value;
  final rep_status;
  final rep_index;

  Single_rep({
    this.rep_name,
    this.rep_picture,
   // this.rep_value,
    this.rep_status,
    this.rep_index
  });
  @override
  Widget build(BuildContext context) {
   return Card(
     child: Hero(
       tag: rep_name, 
       child: Material(
         child: InkWell(
           onTap: ()=> Navigator.of(context).push(
             new MaterialPageRoute(builder: (contex) => 

             new ReportDetails(
               report_detail_name: rep_name,
               report_detail_picture: rep_picture,
               report_detail_status: rep_status,
               
             )
             
             )
             
             ), // report details page on click of report grid item context


           child: GridTile(
             footer: Container(
               color: Colors.white30,
               child: ListTile(
                 leading: Text(rep_name, 
                 style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16,fontFamily: 'Indies',color: Colors.white),
                 ),
                 //title: Text(rep_value,style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800, fontSize: 13), 
                // ),
                // subtitle: Text(rep_status,
               //  style: TextStyle(color: Colors.red, fontSize: 12, fontStyle: FontStyle.italic,), 
               //  ),
                 ),
               
             ),
             child: Image.asset(rep_picture,
             fit: BoxFit.cover,)),
         ),
         
         )),
   );
  }
}
import 'package:flutter/material.dart';

class Reports extends StatefulWidget {
  @override
  _ReportsState createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  var reports_list = [
    {
      "name": "Yields Total",
      "picture":"images/veg.jpg",
      "value": "800 kg"
    },
     {
      "name": "Sales Total",
      "picture":"images/veg.jpg",
      "value": "P23 745.65"
    },
     {
      "name": "Expenses Total",
      "picture":"images/veg.jpg",
      "value": "P8 745.65"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: reports_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_rep(
          rep_name: reports_list[index]['name'],
          rep_picture: reports_list[index]['picture'],
          rep_value: reports_list[index]['value']
        );
         });
  }
}

class Single_rep extends StatelessWidget {
  final rep_name;
  final rep_picture;
  final rep_value;

  Single_rep({
    this.rep_name,
    this.rep_picture,
    this.rep_value
  });
  @override
  Widget build(BuildContext context) {
   return Card(
     child: Hero(
       tag: rep_name, 
       child: Material(
         child: InkWell(
           onTap: (){},
           child: GridTile(
             footer: Container(
               color: Colors.white,
               child: ListTile(
                 leading: Text(rep_name, style: TextStyle(fontWeight: FontWeight.bold),),
                 ),
               
             ),
             child: Image.asset(rep_picture,
             fit: BoxFit.cover,)),
         ),
         
         )),
   );
  }
}
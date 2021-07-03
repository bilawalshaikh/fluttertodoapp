import 'package:flutter/material.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
var output="";
List<dynamic> lst=[1,2,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:ListView.builder(
  itemCount: lst.length,
  itemBuilder: (context,index){
return Container(
  height: 50,
  color: Color(0xff2CD879),
  margin: EdgeInsets.only(top:15),
  child:   ListTile(
  
  title:Text("${lst[index]}",style: TextStyle(
color: Colors.white,

  ),    ),
  trailing: Container(
    width: 50,
    child: Row(
      children: [


        GestureDetector(onTap:(){
showDialog(context: context, builder: (context){
return AlertDialog(
  title:Text("Edit Item"),
  content: TextField(
    onChanged: (value){
output=value;

    }
  ),
actions:[
    ElevatedButton(onPressed: (){
setState(() {
  lst.replaceRange(index, index+1, {output});
  Navigator.of(context).pop();
});


    }, child: Text("Edit")),
]

);

});
 

 }      
      ,child: Icon(Icons.edit,color: Colors.white)),

GestureDetector(onTap:(){
setState(() {
        lst.removeAt(index);
}); }
        ,child: Icon(Icons.delete,color: Colors.white)),



      ],
    ),
  ),
  ),
);
}),
floatingActionButton: FloatingActionButton(onPressed: (){

showDialog(context: context, builder: (context){
return AlertDialog(
  title:Text("Add Item"),
  content: TextField(
    onChanged: (value){
output=value;

    }
  ),
actions:[
    ElevatedButton(onPressed: (){
setState(() {
  lst.add(output);
  Navigator.of(context).pop();
});


    }, child: Text("add")),
]

);

});


},child: Text("Add"),),
    );
  }
}


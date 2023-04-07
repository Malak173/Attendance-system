import 'package:attendance/Course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Courses',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
        ],
        leading: IconButton(
            onPressed: () => Navigator.pop(context, false),
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xff729BD6),
      ),
      body:
        MaterialButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return Course();
    }));},
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child:
      Container(
        child:ListView(
          children: [
            SizedBox(height: 10,),
            Container(
             decoration: BoxDecoration(
             color: Colors.black26,
             borderRadius: BorderRadius.circular(15),),
              child: ListTile(
                title: Text('Comp 205',
                style: TextStyle(fontSize: 18,
                 fontWeight: FontWeight.w800,
                 color: Colors.black),),
                 trailing: Icon(Icons.arrow_forward_ios),
              ),
            )
          ],
        )


      ),

    ),

    ));
  }
}

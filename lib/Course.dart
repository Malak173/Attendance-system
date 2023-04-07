import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comp 205',
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
      body: ListView(
        children: [
          ListTile(
            title: Text('Doctor : Wael Zkaria',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Row(
              children: [
                SizedBox(width: 20,),
                Text('Attend : 90%'),
                SizedBox(width: 80,),
                Text('Absent : 10%'),
              ],
            ),

          ),
          Container(
            color: Colors.black26,
            child: ListTile(
              title: Text('Lecture one',style: TextStyle(fontWeight: FontWeight.w800),),
              subtitle: Row(
                children: [
                  Text('Attend : 2'),
                  SizedBox(width: 80,),
                  Text('Absent : 0'),
                ],
              ),
              leading: Text('1',style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
          ListTile(
            title: Text('Lecture Two',style: TextStyle(fontWeight: FontWeight.w800),),
            subtitle: Row(
              children: [
                Text('Attend : 2'),
                SizedBox(width: 80,),
                Text('Absent : 0'),
              ],
            ),
            leading: Text('2',style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            color: Colors.black26,
            child: ListTile(
              title: Text('Lecture Three',style: TextStyle(fontWeight: FontWeight.w800),),
              subtitle: Row(
                children: [
                  Text('Attend : 2'),
                  SizedBox(width: 80,),
                  Text('Absent : 0'),
                ],
              ),
              leading: Text('3',style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
          ListTile(
            title: Text('Lecture Four',style: TextStyle(fontWeight: FontWeight.w800),),
            subtitle: Row(
              children: [
                Text('Attend : 2'),
                SizedBox(width: 80,),
                Text('Absent : 0'),
              ],
            ),
            leading: Text('4',style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            color: Colors.black26,
            child: ListTile(
              title: Text('Lecture Five',style: TextStyle(fontWeight: FontWeight.w800),),
              subtitle: Row(
                children: [
                  Text('Attend : 2'),
                  SizedBox(width: 80,),
                  Text('Absent : 0'),
                ],
              ),
              leading: Text('5',style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
          ListTile(
            title: Text('Lecture Six',style: TextStyle(fontWeight: FontWeight.w800),),
            subtitle: Row(
              children: [
                Text('Attend : 2'),
                SizedBox(width: 80,),
                Text('Absent : 0'),
              ],
            ),
            leading: Text('6',style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            color: Colors.black26,
            child: ListTile(
              title: Text('Lecture Seven',style: TextStyle(fontWeight: FontWeight.w800),),
              subtitle: Row(
                children: [
                  Text('Attend : 2'),
                  SizedBox(width: 80,),
                  Text('Absent : 0'),
                ],
              ),
              leading: Text('7',style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
          ListTile(
            title: Text('Lecture Eight',style: TextStyle(fontWeight: FontWeight.w800),),
            subtitle: Row(
              children: [
                Text('Attend : 2'),
                SizedBox(width: 80,),
                Text('Absent : 0'),
              ],
            ),
            leading: Text('8',style: TextStyle(fontWeight: FontWeight.w800)),
          ),
          Container(
            color: Colors.black26,
            child: ListTile(
              title: Text('Lecture Nine',style: TextStyle(fontWeight: FontWeight.w800),),
              subtitle: Row(
                children: [
                  Text('Attend : 2'),
                  SizedBox(width: 80,),
                  Text('Absent : 0'),
                ],
              ),
              leading: Text('9',style: TextStyle(fontWeight: FontWeight.w800)),
            ),
          ),
        ],
      ),
    );
  }
}

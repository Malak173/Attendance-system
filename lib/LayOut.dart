import 'package:attendance/Profile.dart';
import 'package:attendance/Schaduale.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class LayOut extends StatefulWidget {
  const LayOut({Key? key}) : super(key: key);

  @override
  State<LayOut> createState() => _LayOutState();
}
class _LayOutState extends State<LayOut> {
 int currentIndex = 0 ;
 List<Widget> screens =
 [
   Home(),
   Profile(),
   Schaduale(),
 ];
 List<String> titles =
     [
       'Home',
       'Profile',
       'Schaduale',
     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex],
        style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
        )
          ,),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications))
        ],
        leading:IconButton(
            onPressed: () => Navigator.pop(context,false),

            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xff729BD6),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff729BD6),
        currentIndex: currentIndex ,
        onTap: (index)
        {
          setState(() {
            currentIndex = index ;
          });;
        },
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label:'Schadual')
        ],
      ),
    );
  }
}

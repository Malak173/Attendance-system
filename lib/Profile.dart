import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            child:ListView(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/Flutter-Framework-Feature-Image-Background-Colour (1).webp'),
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text('Malak Mohammed',
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),),
                    trailing: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text('Computer Science & Math',
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),),
                    trailing: Icon(Icons.app_registration),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text('Level',
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),),
                    trailing: Icon(Icons.leaderboard),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text('Phone Number',
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),),
                    trailing: Icon(Icons.phone),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(15),),
                  child: ListTile(
                    title: Text('Email',
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),),
                    trailing: Icon(Icons.email),
                  ),
                ),
              ],
            )


        ),
      ),
    );
  }
}

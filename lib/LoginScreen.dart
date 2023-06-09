import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LayOut.dart';

GlobalKey<FormState> key1 = GlobalKey<FormState>();
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState
    ();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControlar = TextEditingController();
  var passwordControlar = TextEditingController();

  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(//عشان تخليني اقدر اسكرول
          child:
          Form(
            key: key1,
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                    width: double.infinity,
                  height: 300,
                  color: Colors.white,
                  child:  Image.asset('assets/Confirmedattendance.png',
                    height:double.infinity,width: double.infinity,),
                ),
                SizedBox(height: 20,),
                TextFormField(
                    validator: (value) {
                      bool emailValid =
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(emailControlar.text);
                      if (emailValid == false) {
                        return 'Please check your Email';
                      }
                    },
                    controller: emailControlar,
                    keyboardType:TextInputType.emailAddress,

                    onFieldSubmitted: (value)
                    {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText:'Email',
                      labelText:'Email',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),
                      disabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),

                    )),
                SizedBox(height: 20,)
                , TextFormField(
                    controller: passwordControlar,
                    keyboardType:TextInputType.visiblePassword,
                    obscureText: isPassword ? true : false,
                    validator: (value) {
                      if (value == 0 || value == '') {
                        return 'Please check your Password';
                      }
                    },
                    onFieldSubmitted: (value)
                    {
                      print(value);
                    },
                    decoration: InputDecoration(
                      hintText:'Password',
                      labelText:'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPassword = !isPassword ;
                          });
                        },
                        icon: isPassword ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),
                      disabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black12,
                            width: 1.0
                        ),
                      ),

                    )),
                SizedBox(height: 20,),
                MaterialButton(onPressed:(){
                  print(emailControlar.text);
                  print(passwordControlar.text);

                  if (key1.currentState!.validate())
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return LayOut();
                    }));
                  };

                },
                  child: Text('Login',
                    style: TextStyle(color: Colors.white),),
                  minWidth: double.infinity,
                  height: 50,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                      borderSide: BorderSide.none
                  ),
                  color: Color(0xff729BD6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// AssetImage('assets/Confirmedattendance.png'),
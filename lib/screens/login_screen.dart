import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 15.0, color: Colors.black);

  @override
  Widget build(BuildContext context) {
   
    final emailField = Container(
      
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
     child: TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "EMAIL",
          fillColor: Colors.transparent,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
         ),
        )
      );

    final passwordField = Container(
      
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
     child: TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "SENHA",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    ),
    );

    final loginButon = Container(
      
      
     child: Material(
      color: Theme.of(context).primaryColor,
      elevation: 2.0,
      borderRadius: BorderRadius.circular(10.0),
      //color: Color(0xff000000),
      child: MaterialButton(
        
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.pushNamed(
            context,
            "/menu",
          );
        },
        child: Text("ENTRAR",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black,)),
      ),
    ),
    );

    final password = Material(

       child: GestureDetector(
        onTap: () =>  (
          Navigator.pushNamed(
            context, '/senha'
            )
        ),

       child :Text("Esqueci a senha",
        textAlign: TextAlign.center,
         style: TextStyle(
           color: Theme.of(context).primaryColor,
           fontSize: 16,
           fontWeight: FontWeight.bold,
         ),
      ),
      )
    );

    final cadastro = Material(

      child: GestureDetector(
        onTap: () =>  (
          Navigator.pushNamed(
            context, '/cadastro'
            )
        ),

       child :Text("Cadastrar",
        textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 16,
           color: Theme.of(context).primaryColor,
           fontWeight: FontWeight.bold
         ),
      ),
      )
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Container(
                    width: 250,
                    decoration: new BoxDecoration(
                    
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/logo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 60.0,
                ),
                loginButon,
                SizedBox(
                  height: 35.0,
                ),
                password,
                SizedBox(
                  height: 15.0,
                ),
                cadastro,
                SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
}

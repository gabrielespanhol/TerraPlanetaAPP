import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/paleta_cores.dart';
import 'package:thefive_planetaagua/screens/indigadores_screen.dart';
import 'package:thefive_planetaagua/screens/login_screen.dart';
import 'package:thefive_planetaagua/screens/menu_screen.dart';
import 'package:thefive_planetaagua/screens/password_screen.dart';
import 'package:thefive_planetaagua/screens/register_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/cadastro': (context) => RegisterScreen(),
          '/senha': (context) => PasswordScreen(),
          '/menu': (context) => MenuScreen(),
          '/relatorioReal': (context) => IndicadorReal(),
          
        },
        title: 'TheFive',
        theme: ThemeData(
          primarySwatch: PaletaCores().verdeagua,
        
        ),
    );
  }
}

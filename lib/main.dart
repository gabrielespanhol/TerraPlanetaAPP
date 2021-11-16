import 'package:flutter/material.dart';
import 'package:thefive_planetaagua/paleta_cores.dart';
import 'package:thefive_planetaagua/screens/co2_hist_screen.dart';
import 'package:thefive_planetaagua/screens/co2_real_screen.dart';
import 'package:thefive_planetaagua/screens/indigadores_hist_screen.dart';
import 'package:thefive_planetaagua/screens/indigadores_real_screen.dart';
import 'package:thefive_planetaagua/screens/integrates_screen.dart';
import 'package:thefive_planetaagua/screens/login_screen.dart';
import 'package:thefive_planetaagua/screens/menu_screen.dart';
import 'package:thefive_planetaagua/screens/password_screen.dart';
import 'package:thefive_planetaagua/screens/ph_c02_hist_screen.dart';
import 'package:thefive_planetaagua/screens/ph_c02_real_screen.dart';
import 'package:thefive_planetaagua/screens/ph_hist_screen.dart';
import 'package:thefive_planetaagua/screens/ph_real_screen.dart';
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
          '/relatorioHist': (context) => IndicadorHist(),
          '/integrantes': (context) => Integrantes(),
          '/indicadorRealPH': (context) => IndicadorRealPH(),
          '/indicadorRealCO2': (context) => IndicadorRealCO2(),
          '/indicadorRealPHCO2': (context) => IndicadorRealPHCO2(),
          '/indicadorHistPH': (context) => IndicadorHistPH(),
          '/indicadorHistCO2': (context) => IndicadorHistCO2(),
          '/indicadorHistPHCO2': (context) => IndicadorHistPHCO2(),
          
        },
        title: 'TheFive',
        theme: ThemeData(
          primarySwatch: PaletaCores().verdeagua,
        
        ),
    );
  }
}

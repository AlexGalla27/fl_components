import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 155, 233, 157);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

        primaryColor: primary,

        appBarTheme: AppBarTheme(
          backgroundColor: primary,
          elevation: 20,
          foregroundColor: Colors.white,
        ),

        listTileTheme: ListTileThemeData(
          iconColor: primary,
        ),

        //Estilo de los boton de la aplicacion
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.green),
        )

      );
}
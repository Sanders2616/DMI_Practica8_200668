import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica8_200668/home.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: new ThemeData.dark().copyWith(
      textTheme: GoogleFonts.robotoTextTheme(), // Cambia el tipo de letra aquí
    ),
  ));
}
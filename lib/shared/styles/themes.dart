import 'package:cis_task_3/shared/styles/colors.dart';
import 'package:flutter/material.dart';



ThemeData lightTheme=ThemeData(
    primaryColor: kPrimaryColor,
    primarySwatch: Colors.deepOrange,

    textTheme: TextTheme(
      bodyText1: TextStyle(
          color: Colors.deepOrange,
        fontSize: 20
      ),
    ),
    iconTheme: IconThemeData(
      color: kPrimaryColor
    ),
    appBarTheme: AppBarTheme(color: Colors.white,elevation: 0,centerTitle: true)
);
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screen_navigation/screen_1.dart';
import 'package:screen_navigation/screen_2.dart';

class Routes{
  static Route<dynamic> routeMaker(RouteSettings route){
    switch (route.name){
      case '/':
        return MaterialPageRoute(builder: (_)=> Screen1(),settings: route);
      case '/about':
        final name=route.arguments;
        return MaterialPageRoute(builder: (_)=> Screen2(name: name,),settings: route);
      default:
        return MaterialPageRoute(builder: (_){
          return const Scaffold(
            body: Text("Error Page"),
          );
        });
    }
  }
}
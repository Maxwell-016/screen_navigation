import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_navigation/screen_1.dart';
import 'package:screen_navigation/screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,

      debugShowCheckedModeBanner: false,
      //onGenerateRoute: (route)=> Routes.routeMaker(route),
      //home: Screen1(),

    );
  }
}
  GoRouter router=GoRouter(
      routes:[
        GoRoute(
          path: "/",
          builder: (context,state)=>const Screen1(),
        ),
        GoRoute(
          path: "/about",
          builder: (context,state)=>const Screen2(name: "Maksy",),
        )
      ]
  );



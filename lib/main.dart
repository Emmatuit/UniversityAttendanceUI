
import 'package:attendance1/Constant.dart';
import 'package:flutter/material.dart';
import 'Login/ResponsiveLogin.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
     double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: secondarycolor,
        canvasColor: secondarycolor,
       
         
      ),
      home: Responsive1login(width: width, height: height),
      routes: {
        '/login': (context) => Responsive1login(
              width: width,
              height: height,
            ),
        },
    );
  }
}

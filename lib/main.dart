import "package:flutter/material.dart";
import "package:project_muskan/pages/first_page.dart";
import "package:project_muskan/pages/home_page.dart";
import "package:project_muskan/pages/login_page.dart";

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/firstPage':(context)=>FirstPage(),
        '/loginPage':(context)=>Loginpage(),
        '/homePage' :(context)=>Homepage(),
      },
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}


void main() {
  runApp(const Main());
}

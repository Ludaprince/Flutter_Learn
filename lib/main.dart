import 'package:flutter/material.dart';
import 'package:my_amazon_app/pages/home_page.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
const App({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'GoMoon',
    theme: ThemeData(
      scaffoldBackgroundColor:const Color.fromRGBO(10, 31, 31, 1.0),
      ),
    home: HomePage(),
   );
  }
}


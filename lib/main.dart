import 'package:election_app/pages/firstpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:election_app/pages/candidat_creation_page.dart';
import 'package:election_app/comon/c_input.dart';
import 'package:election_app/comon/c_button.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Iut Training',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0X5e8851)),
          useMaterial3: true),
      home: Firstpage(),
    );
  }
}

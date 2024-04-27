

import 'package:election_app/pages/candidat_creation_page.dart';
import 'package:flutter/material.dart';




class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elections"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CandidatCreation(),
              ));
        },
      ),
    );
  }

}



import 'package:election_app/models/candidat.dart';
import 'package:election_app/pages/candidat_creation_page.dart';
import 'package:flutter/material.dart';




class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  String name = "";
  List<Candidat> candidats = [];
  List<Candidat> friends = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elections"),
      ),
      body: ListView(
        children: candidats
            .map((candidat) => ListTile(
          title: Text("${candidat.name} ${candidat.surname}"),
          subtitle: Text("${candidat.bio}"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1568044852337-9bcc3378fc3c?q=80&w=3435&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          ),

        ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Candidat candidat = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CandidatCreation(),
              ));

          setState(() => candidats.add(candidat));
        },
        child: Icon(Icons.add),
      ),

    );
  }

  bool checkIfExists(Candidat candidat) {
    return friends.contains(candidat);
  }

}

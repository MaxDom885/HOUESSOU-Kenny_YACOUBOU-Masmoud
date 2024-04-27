

import 'package:flutter/material.dart';
import 'package:election_app/models/candidat.dart';
import 'package:election_app/comon/c_button.dart';
import 'package:election_app/comon/c_input.dart';
import 'package:image_picker/image_picker.dart';


class CandidatCreation extends StatefulWidget {
  const CandidatCreation({super.key});

  @override
  State<CandidatCreation> createState() => _CandidatCreationState();
}

class _CandidatCreationState extends State<CandidatCreation> {
  final _formKey = GlobalKey<FormState>();
  final Candidat candidat= Candidat();

  DateTime? birthdate;


  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Candidat candidat= Candidat();
    return Scaffold(
      appBar: AppBar(
        title: Text("Candidate creation"),
        actions: [
          IconButton(
              onPressed: (){
                takePicture();

              },
              icon: Icon(Icons.photo))
        ],
      ),
      body: ListView(
        children: [
          CIinput(name: 'Nom',
            validator: (value) {
              if (value!.isEmpty) {
                return " Champ obligatoire";
              }
            },
            onSaved: (value) {
              // print("Valeur à sauvegarder $value");
              candidat.name=value;
            },
            prefixIcon: Icon(Icons.person),
          ),
          CIinput(
            name: 'Prénom(s)',

            validator: (value) {
              if (value!.isEmpty) {
                return " Champ obligatoire";
              }
            },
            onSaved: (value) {

              // print("Valeur à sauvegarder $value");
              candidat.surname=value;

            },

            prefixIcon: Icon(Icons.person),
          ),
          SizedBox(height: 20,),
          CIinput(
            name: 'Description',

            validator: (value) {
              if (value!.isEmpty) {
                return " Champ obligatoire";
              }
            },
            onSaved: (value) {

              // print("Valeur à sauvegarder $value");
              candidat.bio=value;

            },

            prefixIcon: Icon(Icons.person),
          ),
          SizedBox(height: 20,),
          CIinput(
            name: 'Parti Politique',

            validator: (value) {
              if (value!.isEmpty) {
                return " Champ obligatoire";
              }
            },
            onSaved: (value) {

              // print("Valeur à sauvegarder $value");
              candidat.parti=value;

            },

            prefixIcon: Icon(Icons.person),
          ),
          SizedBox(height: 20,),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        child: CButton(
          onPressed: () {
            if(  _formKey.currentState!.validate()){
              _formKey.currentState!.save();
              Navigator.pop(context, candidat);
            }
          },
          text: 'Sauvegarder',
        ),
      ),
      );
  }
}
class takePicture extends StatefulWidget {
  @override
  _takePictureState createState() => _takePictureState();
}

class _takePictureState extends State<takePicture> {
  var _image;

  // Fonction pour ouvrir la galerie et sélectionner une image
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
         final _image = (pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
        color: Colors.blue,
        image: _image != null
        ? DecorationImage(
          image: FileImage(_image!) ,
          fit: BoxFit.cover,
        )
            : null,
        ),
        child: IconButton(
            icon: Icon(Icons.photo_library),
            onPressed: _pickImage,
            color: Colors.white,
            ),
        );
    }
}

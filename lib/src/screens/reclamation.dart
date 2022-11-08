import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../../dataModel/complaint.dart';
import '../items/imagePicker.dart';
//import '../../firebase/addComplainte.dart';
//import 'package:firebase_storage/firebase_storage.dart';

class Reclamation extends StatefulWidget {
  Reclamation({Key? key}) : super(key: key);

  @override
  State<Reclamation> createState() => _ReclamationState();
}

class _ReclamationState extends State<Reclamation> {


  Text titleOfField(String txt){
    return Text(
      txt,
      style:const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.bold
      ),
    );
  }

  Container inputField(String txt, bool lines, TextEditingController controller){
    return Container(
      padding: EdgeInsets.only(left: 5),
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow:const [
          BoxShadow(
            offset: Offset(2, 5),
            color: Color.fromARGB(255, 218, 218, 218),
            blurRadius: 9
          )
        ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType:lines?null:TextInputType.multiline,
        maxLines:lines?7:1,
        minLines:lines?7:null,
        decoration:InputDecoration(
          border: InputBorder.none,
          hintText: txt,
        ),
      ),
    );
  }

  TextEditingController _residence = TextEditingController();
  TextEditingController _roomNumber = TextEditingController();
  TextEditingController _problemType = TextEditingController();
  TextEditingController _details = TextEditingController();
  TextEditingController _picture = TextEditingController();

  File? _imageFile;
  final _picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:const Text('SUBMIT A COMPLAINT'),
        elevation: 0,
        backgroundColor:Color.fromARGB(255, 56, 123, 178),//const Color.fromARGB(255, 57, 131, 191)
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.width*0.05,
            left: MediaQuery.of(context).size.width*0.05,
            right: MediaQuery.of(context).size.width*0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleOfField('Residence'),
              const SizedBox(height: 9,),
              inputField('write here...', false, _residence),
              const SizedBox(height: 15,),
              titleOfField('Room number'),
              const SizedBox(height: 9,),
              inputField('write here...', false, _roomNumber),
              const SizedBox(height: 15,),
              titleOfField('Type of problem'),
              const SizedBox(height: 9,),
              inputField('write here...', false, _problemType),
              const SizedBox(height: 15,),
              titleOfField('Additional details'),
              const SizedBox(height: 9,),
              inputField('write here...', true, _details),
              const SizedBox(height: 17,),
              titleOfField('Take a picture'),
              const SizedBox(height: 17,),
              GestureDetector(
                  child: _imageFile==null?template(context):Image.file(_imageFile!),
                  onTap: () async{
                    File? _image = await pickerImageFromGallery();
                    setState(() {
                      _imageFile = _image;
                    });
                  }
              ),
              const SizedBox(height: 7,),
              Center(
                child: OutlinedButton(
                  onPressed: () async{
                    },
                  child:a == 0?const Text('Validate'):CircularProgressIndicator(),
                  style: OutlinedButton.styleFrom(
                  
                  padding: EdgeInsets.only(
                    left:MediaQuery.of(context).size.width*0.36,
                    right: MediaQuery.of(context).size.width*0.36,
                  ),
                  textStyle:const TextStyle(
                    fontSize: 16
                  )
                  ),
                ),
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }

  int a = 0;
}
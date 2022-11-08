import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

Future<File> pickerImageFromGallery() async{
    final _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if(pickedFile != null){
      return File(pickedFile.path);
    }
    return File('');
}

Future<File> pickerImageFromCamera() async{
  final _picker = ImagePicker();
  final pickedFile = await _picker.pickImage(source: ImageSource.camera);
  if(pickedFile != null){
    return File(pickedFile.path);
  }
  return File('');
}




DottedBorder template(BuildContext context){
  return DottedBorder(
      borderType: BorderType.RRect,
      radius:const Radius.circular(20),
      dashPattern: [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: Container(
        height: MediaQuery.of(context).size.height*0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:const [
            Icon(
              Icons.image,
              color: Color.fromARGB(255, 34, 128, 137),
              size: 67,
            ),
            Text(
              'Add image Here',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      )
    )
  );
}
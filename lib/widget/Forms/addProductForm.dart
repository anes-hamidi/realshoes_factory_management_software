// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mongo_dart/mongo_dart.dart' hide State;

import '../../database/Product/addProduct.dart';
import '../../objects/productO.dart';

class AddProductForm extends StatefulWidget {
  const AddProductForm({super.key});

  @override
  _AddProductFormState createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
 
  final TextEditingController _name = TextEditingController();
  final TextEditingController _size = TextEditingController();
  final TextEditingController  _colors = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add new product'),
      ),
      body: Form(
       
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              controller: _name,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Size'),
              keyboardType: TextInputType.number,
              controller: _size,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Colors'),
              controller: _colors,
            ),
            ElevatedButton(
              onPressed: (){
            insertProduct(
              name: _name.text,
              size: int.parse(_size.text),
              colors: _colors.text,
            );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

 
}

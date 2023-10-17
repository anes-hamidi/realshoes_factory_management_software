// ignore_for_file: library_private_types_in_public_api, file_names, use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/database/Product/addProduct.dart';
import 'package:realshoes_factory_management_software/widget/ProductWidget/colorPicker.dart';

class InsertUserForm extends StatefulWidget {
  const InsertUserForm({super.key});

  @override
  _InsertUserFormState createState() => _InsertUserFormState();
}

class _InsertUserFormState extends State<InsertUserForm> {
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _pointurController = TextEditingController();
  final _priceController = TextEditingController();
  final _costController = TextEditingController();
  Color? selectedColor1;

  void onColorSelected1(Color color) {
    setState(() {
      selectedColor1 = color;
    });
  }

 

  @override
  Widget build(BuildContext context) {
    return AlertDialog(actions: [
      Form(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name.';
                }
                return null;
              },
            ),
            const SizedBox(height: 7),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a Description.';
                }
                return null;
              },
            ),
            const SizedBox(height: 7),
            TextFormField(
              controller: _pointurController,
              decoration: const InputDecoration(
                labelText: 'Pointure',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a Pointure.';
                }
                return null;
              },
            ),
            const SizedBox(height: 7),
            TextFormField(
              controller: _priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a Price.';
                }
                return null;
              },
            ),
            const SizedBox(height: 7),
            TextFormField(
              controller: _costController,
              decoration: const InputDecoration(
                labelText: 'Cost',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an Cost.';
                }
                return null;
              },
            ),]),
            const SizedBox(height: 20),
             ElevatedButton(
                onPressed: _pickImage,
                child: Text('Select Image'),
              ),
              if (_imageFile != null)
                Image.file(File(_imageFile!.path)),
            ],
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ColorPickerIconButton(
                colors: const [
                  Colors.brown,
                  Colors.black,
                  Colors.blue,
                  Colors.grey,
                  Colors.white,
                ],
                onColorSelected: onColorSelected1,
              ),
              
            ]),
            
            
            
          
            const SizedBox(height: 20),
            Row(children: [
              const Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white38),
                ),
                onPressed: () async {
                  // Validate the form.
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              const SizedBox(width: 15),
              ElevatedButton(
                onPressed: () async {
                  // Validate the form.
                  insertProduct(
                    _nameController.text,
                    _descriptionController.text,
                    int.parse(_pointurController.text),
                    double.parse(_priceController.text),
                    double.parse(_costController.text),
                    _pickImage
                    
                  );
                  const AlertDialog(
                      title: Text("Success"),
                      content: SingleChildScrollView(
                          child: ListBody(children: <Widget>[
                        Text('You have successfully added your product.')
                      ])));
                  setState(() {});
                },
                child: const Text('Insert Product'),
            ),
            ])
          
        ),
      
    
  }
}

// ignore_for_file: library_private_types_in_public_api, file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/database/initializeDataBase.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareDesktop.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBarDesktop(),
        body: Form(
          child: Column(
            children: [
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
              ),
              ElevatedButton(
                onPressed: () async {
                  // Validate the form.
                  insertProduct(
                      _nameController.text,
                      _descriptionController.text,
                      int.parse(_pointurController.text),
                      double.parse(_priceController.text),
                      double.parse(_costController.text),
                      );
                },
                child: const Text('Insert Product'),
              ),
            ],
          ),
        ));
  }
}

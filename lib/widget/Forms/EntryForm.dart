// ignore_for_file: library_private_types_in_public_api, file_names, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:realshoes_factory_management_software/widget/AppBar/appbareDesktop.dart';

import '../../objects/costumerO.dart';

class InsertUserForm extends StatefulWidget {
  const InsertUserForm({super.key});

  @override
  _InsertUserFormState createState() => _InsertUserFormState();
}

class _InsertUserFormState extends State<InsertUserForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarDesktop(),
    body:
    Form(
      key: _formKey,
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
            controller: _ageController,
            decoration: const InputDecoration(
              labelText: 'Age',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an age.';
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () async {
              // Validate the form.
              if (_formKey.currentState!.validate()) {
                // Insert the data into the database.
                final user = User(
                    name: _nameController.text,
                    age: int.parse(_ageController.text),
                    id: 1);
                await insertUser(user);

                // Show a success message.
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('User successfully inserted!'),
                  ),
                );
              }
            },
            child: const Text('Insert User'),
          ),
        ],
      ),
    )
    );

  }

  Future<int> insertUser(User user) async {
    final db = await openDatabase('my_database.db');
    final res = await db.insert('users', user.toMap());
    await db.close();
    return res;
  }
}

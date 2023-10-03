import 'package:flutter/material.dart';

class EntryFormPopup extends StatefulWidget {
  const EntryFormPopup({super.key});

  @override
  _EntryFormPopupState createState() => _EntryFormPopupState();
}

class _EntryFormPopupState extends State<EntryFormPopup> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();


  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add New Product'),
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'date'),
            ),
            TextField(
              controller: _amountController,
              decoration: const InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          onPressed: () {
           
            //await _insertEntry();
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
        ElevatedButton(
          onPressed: () {
           

            
            // Close the popup without saving
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
      ],
    );
  }


}

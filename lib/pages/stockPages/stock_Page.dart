import 'package:flutter/material.dart';
import 'package:realshoes_factory_management_software/widget/appbare.dart';

import '../../widget/EntryForm.dart';

class StockPage extends StatelessWidget {
  const StockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: const Center(
        child: Text('Stock'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
          showDialog(
      context: context, 
      builder: (context) => EntryFormPopup()
    );
      }),
    );
  }
}

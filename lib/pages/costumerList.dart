import 'package:flutter/material.dart';

import '../database/initializeDataBase.dart';
import '../objects/costumerO.dart';
import '../objects/productO.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final SQLiteHelper helper = SQLiteHelper();

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    helper.initDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: TextButton(
            onPressed: () async {
              setState(() {});
            },
            child: const Text("ADD"),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await helper.deleteAllUsers();
                setState(() {});
              },
              child: const Text("DEL"),
            ),
          ]),
      body: FutureBuilder<List<User>>(
        future: helper.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No users found.'));
          } else {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];

                return _card(user, context);
              },
            );
          }
        },
      ),
    );
  }
}

Widget _card(User user, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ID: ${user.id}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Name: ${user.name}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            Text(
              "adress: ${user.age}",
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
           
          ],
        ),
      ),
    ),
  );
}
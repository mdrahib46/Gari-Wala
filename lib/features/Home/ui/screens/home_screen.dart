
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseFirestore  firebaseFirestore = FirebaseFirestore.instance;

  int counter = 0;

  void increment(){
    final user = {
      'firstName': 'MD',
      'lastName': 'Rahib',
      'born': 0
    };
    firebaseFirestore.collection('user').add(user).then((DocumentReference doc)=> print("User Add  with ID: ${doc.id}"));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Gari Wala")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('You have pushed the button this many times:'),
            Text('$counter', style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

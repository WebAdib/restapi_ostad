import 'package:flutter/material.dart';

class DummyUser extends StatefulWidget {
  const DummyUser({super.key});

  @override
  State<DummyUser> createState() => _DummyUserState();
}

class _DummyUserState extends State<DummyUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy User'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.blue.shade300,
              ),
              title: Text('User $index'),
              subtitle: Text('This is a dummy user'),
            ),
          );
        },
      ),
    );
  }
}

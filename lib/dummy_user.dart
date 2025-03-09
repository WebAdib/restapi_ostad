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
      body: Center(
        child: Text('This is a dummy user.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

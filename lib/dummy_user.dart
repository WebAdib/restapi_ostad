import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DummyUser extends StatefulWidget {
  const DummyUser({super.key});

  @override
  State<DummyUser> createState() => _DummyUserState();
}

class _DummyUserState extends State<DummyUser> {
  List users = [];
  Future<void> fetchUsers() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      users = jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch users');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dummy User'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.blue.shade300,
              ),
              title: Text(users[index]['name']),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email: ${users[index]['email']}'),
                  Text('Phone: ${users[index]['phone']}'),
                  Text('Website: ${users[index]['website']}'),
                  Text('Address: ${users[index]['address']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Text('Nome: ${user.name}', style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 8),
              Text('Username: ${user.username}'),
              const SizedBox(height: 8),
              Text('Email: ${user.email}'),
              const SizedBox(height: 8),
              Text('Empresa: ${user.company}'),
              const SizedBox(height: 8),
              Text('Cidade: ${user.city}'),
            ],
          ),
        ),
      ),
    );
  }
}

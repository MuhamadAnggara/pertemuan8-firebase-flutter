import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  final User user;
  
  const UserInfoScreen({super.key, required this.user});

  Future<void> _logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dahsboard user'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
            tooltip: 'logout',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            'Informasi Pengguna',
            style: Theme.of(context). textTheme.titleLarge,
            ),
              const Divider(),
                const SizedBox(height: 8),
                Text('UID: ${user.uid}'),
                const SizedBox(height: 8),
                Text('Email: ${user.email ?? "Tidak ada email"}'),
                const SizedBox(height: 8),
                Text('Email Terverifikasi: ${user.emailVerified ? "Ya" : "Tidak"}'),
                const SizedBox(height: 8),
                Text('Terakhir Masuk: ${user.metadata.lastSignInTime ?? "Tidak diketahui"}'),
          ],
        ),
      ),
    );
  }
}
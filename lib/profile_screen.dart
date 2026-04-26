import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purpleAccent,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 20),
            const Text(
              'Ahmyd Yasser',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Pentration tester and bughunter',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            _buildProfileOption(Icons.settings, 'Settings'),
            _buildProfileOption(Icons.history, 'Activity History'),
            _buildProfileOption(Icons.help_outline, 'Help & Support'),
            const Spacer(),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to Home', style: TextStyle(color: Colors.purpleAccent)),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        leading: Icon(icon, color: Colors.purpleAccent),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        tileColor: const Color(0xFF1A1A2E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

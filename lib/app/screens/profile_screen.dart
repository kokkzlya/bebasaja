import 'package:flutter/material.dart';

import 'package:bebasaja/app/screens/edit_profile_screen.dart';
import 'package:bebasaja/app/screens/login_screen.dart';
import 'package:bebasaja/infra/storage/storage_utils.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<void> _handleLogout(BuildContext context) async {
    await SecureStorageUtil.storage.delete(key: 'access_token');
    await SecureStorageUtil.storage.delete(key: 'id_token');
    if (context.mounted) {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(radius: 50, backgroundColor: Colors.grey),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'johndoe',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('Edit Profile', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EditProfileScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.grey),
                      SizedBox(width: 10),
                      Text('Logout', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  onTap: () {
                    print('>>>>>>>>>>> Logout tapped');
                    _handleLogout(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

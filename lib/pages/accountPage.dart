import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: AppGradients.mainGradient,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Header
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        // // Profile Picture
                        // Stack(
                        //   children: [
                        //     CircleAvatar(
                        //       radius: 60,
                        //       backgroundImage: AssetImage(
                        //           'lib/assets/images/000 1.png'), // Replace with user's profile picture
                        //       backgroundColor: Colors.grey.shade200,
                        //     ),
                        //     Positioned(
                        //       bottom: 0,
                        //       right: 0,
                        //       child: IconButton(
                        //         icon: Icon(Icons.edit, color: Colors.blue),
                        //         onPressed: () {
                        //           // Handle profile picture change
                        //         },
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        SizedBox(height: 16),
                        // User Name
                        Text(
                          'Fati',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        // User Contact Info
                        Text(
                          '+233 556 38 7440',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        SizedBox(height: 16),
                        // User Bio
                        Text(
                          'A passionate learner of technology and innovation. Always eager to explore new opportunities and challenges.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Account Settings Section
                Text(
                  'Account Settings',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle profile edit
                  },
                  child: Text('Edit Profile'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle account settings
                  },
                  child: Text('Account Settings'),
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.grey[700],
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Handle logout
                  },
                  child: Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

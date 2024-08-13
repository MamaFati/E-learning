import 'package:e_learning/utils/tap_link.dart';
import 'package:flutter/material.dart';
import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/component/text_area.dart';
import 'package:e_learning/pages/HomePage.dart';
import 'package:e_learning/pages/sign_In_Page.dart';
import 'package:e_learning/services/auth_services.dart';
import 'package:e_learning/theme/theme_data.dart';

class SignOutPage extends StatefulWidget {
  const SignOutPage({super.key});

  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  final TextEditingController userNameControl1 = TextEditingController();
  final TextEditingController userLastNameControl = TextEditingController();
  final TextEditingController userEmailControl = TextEditingController();
  final TextEditingController userNumberControl = TextEditingController();
  final TextEditingController userPasswordControl = TextEditingController();
  final TextEditingController userConfirmPasswordControl =
      TextEditingController();

  void registerUser() async {
    if (userPasswordControl.text == userConfirmPasswordControl.text) {
      final response = await AuthService.registerUser(
        userNameControl1.text,
        userPasswordControl.text,
        userEmailControl.text,
      );

      if (response.statusCode == 201) {
        // Navigate to the home page with the user's name
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(userName: userNameControl1.text),
          ),
        );
      } else {
        // Show an error message if registration fails
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Registration Failed'),
            content: Text('Could not register user.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK'),
              ),
            ],
          ),
        );
      }
    } else {
      // Show an error message if passwords do not match
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Password Mismatch'),
          content: Text('Passwords do not match.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.lightCyan),
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "SIGN UP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // Avatar Image
              Image.asset('lib/assets/images1/GFGFG 1.png'),
              // Text
              const Text(
                "CREATE A NEW ACCOUNT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // Input section
              CustomTextArea(
                hintText: 'FIRST NAME',
                controller: userNameControl1,
                obscureText: false,
                icon: Icons.person_outline,
              ),
              CustomTextArea(
                hintText: 'LAST NAME',
                controller: userLastNameControl,
                obscureText: false,
                icon: Icons.person_outline,
              ),
              CustomTextArea(
                hintText: 'EMAIL',
                controller: userEmailControl,
                obscureText: false,
                icon: Icons.mail_rounded,
              ),
              CustomTextArea(
                hintText: 'PHONE NUMBER',
                controller: userNumberControl,
                obscureText: false,
                icon: Icons.phone,
              ),
              CustomTextArea(
                hintText: 'PASSWORD',
                controller: userPasswordControl,
                obscureText: true,
                icon: Icons.lock,
              ),
              CustomTextArea(
                hintText: 'CONFIRM PASSWORD',
                controller: userConfirmPasswordControl,
                obscureText: true,
                icon: Icons.lock,
              ),
              // Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: CustomButton(
                  text: "SIGN UP",
                  color: const Color.fromARGB(255, 1, 138, 156),
                  onTap: registerUser,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("ALREADY HAVE AN ACCOUNT?"),
                    SignInLink(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      text: "SIGN IN",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontSize: 16, // Customize font size
                        fontWeight: FontWeight.bold, // Customize font weight
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

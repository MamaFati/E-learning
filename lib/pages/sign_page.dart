import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/pages/sign_In_Page.dart';
import 'package:e_learning/pages/sign_Out_Page.dart';
import 'package:flutter/material.dart';

class signPage extends StatelessWidget {
  const signPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFFFBFFFF)),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFFBFFFF), // Light cyan
            Color(0xFFFFFFFF), // White
            Color(0xFF9BE5DD), // Light turquoise
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topLeft,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image
              Image.asset('lib/assets/images1/vvc 1.png'),
              // SignIn buttom
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                child: CustomButton(
                  text: "LOG IN",
                  color: Colors.green[400]!,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  ),
                ),
              ),
              // SignUp buttom
              CustomButton(
                text: "SIGN UP",
                color: const Color.fromARGB(255, 1, 138, 156),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignOutPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

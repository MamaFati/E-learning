import 'package:e_learning/component/textArea.dart';
import 'package:flutter/material.dart';

class SignOutPage extends StatelessWidget {
  const SignOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFBFFFF)),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFFFBFFFF), // Light cyan
              Color(0xFFFFFFFF), // White
              Color(0xFF9BE5DD), // Light turquoise
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topLeft,
          )),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //  Avator Image
                Image.asset('lib/assets/images1/GFGFG 1.png'),
                // text
                const Text(
                  "CREATE A NEW ACCOUNT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                // Input section
                const CustomTextArea(
                  hintText: 'FRISTNAME',
                ),
                const CustomTextArea(
                  hintText: 'LASTNAME',
                ),
                const CustomTextArea(
                  hintText: 'EMAIL',
                ),

                const CustomTextArea(
                  hintText: 'PHONE NUMBER',
                ),
                const CustomTextArea(
                  hintText: 'PASSWORD',
                ),
                const CustomTextArea(
                  hintText: 'CONFIRM PASSWORD',
                ),
                // buttom
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                        backgroundColor: Colors.green[400]),
                  ),
                ),
                //
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ALREADY HAVE ACCOUNT?"),
                      Text(
                        " SIGN IN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

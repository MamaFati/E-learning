import 'package:e_learning/component/textArea.dart';
import 'package:e_learning/pages/sign_In_Page.dart';
import 'package:flutter/material.dart';

class SignOutPage extends StatefulWidget {
  const SignOutPage({super.key});

  @override
  State<SignOutPage> createState() => _SignOutPageState();
}

class _SignOutPageState extends State<SignOutPage> {
  final userNameControl1 = TextEditingController();
  final userLastNameControl = TextEditingController();
  final userEmailControl = TextEditingController();
  final userNumberControl = TextEditingController();
  final userPasswordControl = TextEditingController();
  final userConfirmPasswordControl = TextEditingController();

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
                CustomTextArea(
                  hintText: 'FRISTNAME',
                  controller: userNameControl1,
                  obscureText: false,
                ),
                CustomTextArea(
                  hintText: 'LASTNAME',
                  controller: userLastNameControl,
                  obscureText: false,
                ),
                CustomTextArea(
                  hintText: 'EMAIL',
                  controller: userEmailControl,
                  obscureText: false,
                ),

                CustomTextArea(
                  hintText: 'PHONE NUMBER',
                  controller: userNumberControl,
                  obscureText: false,
                ),
                CustomTextArea(
                  hintText: 'PASSWORD',
                  controller: userPasswordControl,
                  obscureText: true,
                ),
                CustomTextArea(
                  hintText: 'CONFIRM PASSWORD',
                  controller: userConfirmPasswordControl,
                  obscureText: true,
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
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ALREADY HAVE ACCOUNT?"),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()),
                          );
                        },
                        child: const Text(
                          " SIGN IN",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
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

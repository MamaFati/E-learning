import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/component/dialogBox.dart';
import 'package:e_learning/component/square_tile.dart';
import 'package:e_learning/component/textArea.dart';
import 'package:e_learning/pages/sign_Out_Page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool? isChecked = false;
  // Text Editing controllers
  final userNameControl = TextEditingController();
  final passwordControl = TextEditingController();
  final _controller = TextEditingController();

  // Sign user In
  void signUserIn() {}

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
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Avator Image
                    Image.asset(
                      'lib/assets/images1/0000 1.png',
                      width: 150,
                    ),
                    // Welcome message
                    Text(
                      "Welcome Back",
                      style: TextStyle(color: Colors.grey[700], fontSize: 26),
                    ),
                    // user name
                    CustomTextArea(
                      hintText: 'USERNAME OR EMAIL',
                      controller: userNameControl,
                      obscureText: false,
                    ),
                    // user password
                    CustomTextArea(
                      hintText: 'PASSWORD',
                      controller: passwordControl,
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    // Row for remember me and forgot password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  tristate: true,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value;
                                    });
                                  },
                                ),
                                // Text
                                const Text(
                                  "REMEMBER ME",
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dailogBox(
                                          controller: _controller,
                                          onCancel: () =>
                                              Navigator.of(context).pop(),
                                        )),
                              );
                            },
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // button
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                      child: CustomButton(
                        text: "LOG IN",
                        color: Colors.green[400]!,
                        onTap: signUserIn,
                      ),
                    ),
                    // OR#####
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 0.7,
                              color: Colors.grey[400],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              "Or continue with",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 0.5,
                              color: Colors.grey[400],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          squareTile(
                              imagePath: 'lib/assets/images1/HNFVYH 1.png'),
                          SizedBox(width: 10),
                          //  image2
                          squareTile(
                              imagePath: 'lib/assets/images1/GYVHG 1.png'),
                          SizedBox(width: 10), // image3
                          squareTile(imagePath: 'lib/assets/images1/ZDZ 1.png'),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("DON'T HAVE AN ACCOUNT?"),
                          // link to signUp page
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignOutPage()),
                              );
                            },
                            child: const Text(
                              " SIGN UP",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

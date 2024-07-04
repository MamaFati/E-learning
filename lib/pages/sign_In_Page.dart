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
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              //  Avator Image
              Image.asset('lib/assets/images1/0000 1.png'),
              // user name
              CustomTextArea(
                hintText: 'USERNAME OR EMAIL',
              ),
              // user password
              CustomTextArea(
                hintText: 'PASSWORD',
              ),
              //  const SizedBox(height: 20),
              // button
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  backgroundColor: Colors.green[400],
                ),
              ),
              // Row for remember me and forgot password
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
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
                          Text(
                            "REMEMBER ME",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              // OR#####
              Text("-----OR-----"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // icons.. google Apple X
                    Image.asset(
                      'lib/assets/images1/HNFVYH 1.png',
                      width: 35,
                    ),
                    Image.asset(
                      'lib/assets/images1/GYVHG 1.png',
                      width: 35,
                    ),
                    Image.asset(
                      'lib/assets/images1/ZDZ 1.png',
                      width: 35,
                    ),
                  ],
                ),
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
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
                          
                          decoration: TextDecoration.underline,
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
    );
  }
}

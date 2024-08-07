import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/pages/resetPasswordPage.dart';
import 'package:e_learning/utils/numTextFeild.dart';
import 'package:flutter/material.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCode();
}

class _VerifyCode extends State<VerifyCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "VERIFY CODE ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFFFBFFFF)),
      body: Container(
          decoration: BoxDecoration(
            color: Color(0xFF9BE5DD),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Enter Verification Code From Your Email",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // input
              Row(
                // ToDo take user code and compare to email verification code
                children: [
                  numField(),
                  numField(),
                  numField(),
                  numField(),
                  numField(),
                ],
              ),
              Text("Enter 6 digit verification code sent to your email",
                  style: TextStyle(color: Colors.grey)),
              Text("Resend", style: TextStyle(color: Colors.blue)),
              // rest buttom
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                child: CustomButton(
                  text: "VERIFY",
                  color: Colors.green[400]!,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResetCode()),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

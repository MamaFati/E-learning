import 'package:e_learning/component/bottoms.dart';
import 'package:e_learning/component/text_area.dart';
import 'package:e_learning/pages/sign_In_Page.dart';
import 'package:flutter/material.dart';

class ResetCode extends StatefulWidget {
  const ResetCode({super.key});

  @override
  State<ResetCode> createState() => _ResetCode();
}

class _ResetCode extends State<ResetCode> {
  final resetPassword1 = TextEditingController();
  final resetPassword2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RESET PASSWORD ",style: TextStyle(fontWeight: FontWeight.bold),
        ),
          backgroundColor: Color(0xFFFBFFFF)
      ),
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
              // Todo display a massage to the user after password is reseted
              // input
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: CustomTextArea(
                  hintText: 'Enter New Password',
                  controller: resetPassword1,
                  obscureText: true,
                ),
              ),
               CustomTextArea(
                hintText: 'Confirm New Password',
                controller: resetPassword2,
                obscureText: true,
              ),
              // rest buttom
              Padding(
                padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                child: CustomButton(
                  text: "RESET",
                  color: Colors.green[400]!,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignInPage()),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

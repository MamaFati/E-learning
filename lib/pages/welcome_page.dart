import 'package:e_learning/pages/sign_page.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text
              const Text(
                "AFRICA-CAN-DO E-LEARNING",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              // image
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Image.asset('lib/assets/images1/3322 1.png'),
              ),
              // Description
              const Text(
                "Engage In Effective, Interactive Learning ",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // loading
              const Padding(
                padding: EdgeInsets.only(top: 70.0, bottom: 10),
                child: Text(
                  "Loading.....",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              // buttom
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => signPage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF9BE5DD),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          // color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:e_learning/pages/welcome_veiw.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  bool _isLoading = true; // Flag to control the loading indicator visibility

  @override
  void initState() {
    super.initState();

    // Simulate a loading delay
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isLoading = false; // Update the flag to hide the loading indicator
      });

      // Navigate to the next page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SliderPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: AppGradients.mainGradient,
          ),
          child: Stack(
            children: [
              // Main content
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "AFRICA-CAN-DO E-LEARNING",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    // Image
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: Image.asset('lib/assets/images1/3322 1.png'),
                    ),
                    // Description
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: const Text(
                        "Engage In Effective, Interactive Learning ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              // Loading indicator
              if (_isLoading)
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xFF9BE5DD)),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

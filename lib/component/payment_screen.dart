import 'package:flutter/material.dart';
import 'package:e_learning/component/creditCardPayment_section.dart';
import 'package:e_learning/component/paypalpayment_screen.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:e_learning/models/course.dart';

class PaymentOptionsScreen extends StatefulWidget {
  final main_courses course;

  PaymentOptionsScreen({Key? key, required this.course}) : super(key: key);

  @override
  _PaymentOptionsScreenState createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  @override
  void initState() {
    super.initState();
    // Show the payment options bottom sheet when the screen is loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPaymentOptionsBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightCyan,
        title: Text('Payment Options'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: Center(
          child: Text(
            'Payment options will be displayed automatically.',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  void _showPaymentOptionsBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height *
              0.5, // Half of the screen height
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: AppGradients.mainGradient,
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Select Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              _buildPaymentOptionButton(
                context,
                icon: Icons.paypal,
                label: 'PayPal',
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PayPalPaymentScreen(course: widget.course)),
                  );
                },
              ),
              SizedBox(height: 10),
              _buildPaymentOptionButton(
                context,
                icon: Icons.credit_card,
                label: 'Credit Card',
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            CreditCardPaymentScreen(course: widget.course)),
                  );
                },
              ),
              SizedBox(height: 10),
              _buildPaymentOptionButton(
                context,
                icon: Icons.payment,
                label: 'Other Payments',
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Other payment methods selected.'),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPaymentOptionButton(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightTurquoise,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(16.0),
        textStyle: TextStyle(fontSize: 16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(icon, size: 24.0),
          SizedBox(width: 16),
          Text(label),
        ],
      ),
    );
  }
}

import 'package:e_learning/pages/success_message.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';

class PayPalPaymentScreen extends StatelessWidget {
  const PayPalPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightCyan,
        title: Text('Pay with PayPal'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.mainGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Payment Summary
              Text(
                'Payment Summary',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Card(
                color: AppColors.lightCyan,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Amount: \$10.00', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 10),
                      Text('Description: Course Subscription',
                          style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Text('Total: \$10.00',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // PayPal Payment Details
              Text(
                'PayPal Payment Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              // Payment Buttons
              ElevatedButton(
                onPressed: () {
                  // Handle Pay Now action
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Processing payment...'),
                    ),
                  );
                  //
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessMessage()),
                  );
                },
                child: Text(
                  'Pay Now',
                  style: TextStyle(color: AppColors.lightCyan),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Handle Pay Now action
                  Navigator.pop(context);
                  
                },
                child: Text(
                  'Council',
                  style: TextStyle(color: AppColors.lightCyan),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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

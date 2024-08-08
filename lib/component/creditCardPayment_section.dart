import 'package:e_learning/pages/success_message.dart';
import 'package:e_learning/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreditCardPaymentScreen extends StatefulWidget {
  const CreditCardPaymentScreen({super.key});

  @override
  _CreditCardPaymentScreenState createState() =>
      _CreditCardPaymentScreenState();
}

class _CreditCardPaymentScreenState extends State<CreditCardPaymentScreen> {
  final TextEditingController _expirationDateController =
      TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Payment'),
        backgroundColor: AppColors.lightCyan, // Change to your desired color
      ),
      body: Container(
        height:700,
         decoration: BoxDecoration(
            color: AppColors.lightCyan
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildTextField(
                  label: 'Card Number',
                  hintText: '1234 5678 9012 3456',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _expirationDateController,
                  decoration: InputDecoration(
                    labelText: 'Expiration Date',
                    hintText: 'MM/YY',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  keyboardType: TextInputType.none,
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _expirationDateController.text =
                            "${pickedDate.month.toString().padLeft(2, '0')}/${pickedDate.year.toString().substring(2)}";
                      });
                    }
                  },
                ),
                SizedBox(width: 16),
                SizedBox(height: 16),
                TextFormField(
                  controller: _cvvController,
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    hintText: '123',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
                SizedBox(height: 16),
                _buildTextField(
                  label: 'Cardholder Name',
                  hintText: 'John Doe',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    // Handle payment processing
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Payment successful!'),
                      ),
                    );
                    // Move to success page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccessMessage()),
                    );
                  },
                  child: Text('Pay Securely',
                      style: TextStyle(color: AppColors.lightCyan)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
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
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required String hintText,
    required TextInputType keyboardType,
  }) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthService {
  static Future<http.Response> registerUser(
      String username, String password, String email) {
    return http.post(
      Uri.parse('http://127.0.0.1:8000/auth/register/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
        'email': email,
      }),
    );
  }

  static Future<http.Response> loginUser(String username, String password) {
    return http.post(
      Uri.parse('http://127.0.0.1:8000/auth/login/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );
  }
}

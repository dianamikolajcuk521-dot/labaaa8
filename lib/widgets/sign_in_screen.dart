import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'reset_password_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  void showMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Message"),
        content: Text("Need to implement"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final emailCtrl = TextEditingController();
    final passCtrl = TextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Image.network(
                "https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png",
                height: 90,
              ),
              SizedBox(height: 16),
              Text("Flutter", style: TextStyle(fontSize: 28)),
              SizedBox(height: 24),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Email:"),
              ),
              TextField(controller: emailCtrl),

              SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Password:"),
              ),
              TextField(controller: passCtrl, obscureText: true),

              SizedBox(height: 16),
              OutlinedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SignUpScreen()),
                ),
                child: Text("Sign up"),
              ),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => showMessage(context),
                      child: Text("Login"),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => ResetPasswordScreen()),
                      ),
                      child: Text("Reset password"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

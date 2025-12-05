import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final emailCtrl = TextEditingController();

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
              Text("Reset Password", style: TextStyle(fontSize: 28)),
              SizedBox(height: 24),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Email:"),
              ),
              TextField(controller: emailCtrl),

              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => showMessage(context),
                child: Text("Reset"),
              ),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

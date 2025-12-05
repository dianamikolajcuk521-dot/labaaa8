import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

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
              Text("Sign up", style: TextStyle(fontSize: 28)),
              SizedBox(height: 24),

              Align(
                alignment: Alignment.centerLeft,
                child: Text("Name:"),
              ),
              TextField(controller: nameCtrl),

              SizedBox(height: 16),
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
              ElevatedButton(
                onPressed: () => showMessage(context),
                child: Text("Sign up"),
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

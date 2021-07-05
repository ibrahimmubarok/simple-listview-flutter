import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_1/home_screen.dart';

import 'utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(dimen_16),
      child: SafeArea(
        minimum: const EdgeInsets.all(dimen_16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "Write your name here ....",
                  labelText: "Your Name",
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_textController.text.isEmpty) {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                              title: Text("Terjadi Kesalahan"),
                              content:
                                  Text("Harap masukkan nama terlebih dahulu"));
                        });
                  } else {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen(name: _textController.text);
                    }));
                  }
                },
                child: const Text('Next'),
              )
            ],
          ),
        ),
      ),
    ));
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

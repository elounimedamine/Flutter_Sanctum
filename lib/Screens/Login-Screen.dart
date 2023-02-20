import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_sanctum/Providers/Auth.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _email;
  String? _password;

  void submit() {
    // log(_email!);
    // log(_password!);
    Provider.of<Auth>(context, listen: false).login(
      credentials: {
        'email': _email,
        'password': _password,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Login Screen'),
        ),
        body: Form(
            key: _formKey,
            child: Scrollbar(
                child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                TextFormField(
                  initialValue: "aouni@gmail.com",
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    hintText: 'email@email.com',
                  ),
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
                TextFormField(
                  initialValue: "123456",
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: '123456',
                  ),
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      _formKey.currentState?.save();
                      submit();
                    },
                  ),
                ),
              ]),
            )))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

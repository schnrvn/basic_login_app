/// SecondPage widget displays a welcome message to the user after login.
/// It demonstrates navigation and data passing between screens.
import 'package:flutter/material.dart';

/// SecondPage is a StatefulWidget that receives a username parameter
/// and displays a personalized welcome message.
class SecondPage extends StatefulWidget {
  /// The username passed from the login screen
  final String username;

  const SecondPage({
    super.key,
    required this.username,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HELLO, KUPAL!'),
        backgroundColor: const Color.fromARGB(255, 184, 175, 175),
      ),
      backgroundColor: const Color.fromARGB(255, 112, 50, 50),
      body: Center(
        child: Text(
          'SIR, UWIAN NA PLEASE ${widget.username}!',
          style: const TextStyle(
            color: Colors.orange,
            fontSize: 80,
          ),
        ),
      ),
    );
  }
}

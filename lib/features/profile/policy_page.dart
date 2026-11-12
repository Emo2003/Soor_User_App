import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policy Page'),
      ),
      body: const Center(
        child: Text('This is the Policy Page'),
      ),
    );
  }
}

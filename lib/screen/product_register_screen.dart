import 'package:flutter/material.dart';

class RegisterProduct extends StatelessWidget {
  const RegisterProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'CADASTRO DE PRODUTO',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 19,
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 174, 174, 174),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
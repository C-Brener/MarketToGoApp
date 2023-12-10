import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffCFFCEE),
        minimumSize: const Size(105, 26)
      ),
      onPressed: ( ) { },
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Log-in',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)
              ),
            ),
          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';

class Alreadyhave extends StatelessWidget {
  const Alreadyhave({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child:  Column(
        children: [
          Text(
            'Se já tem uma conta',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xff172823),
            ),
          )
        ],
      ),
    );
  }
}
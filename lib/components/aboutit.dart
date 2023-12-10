import 'package:flutter/material.dart';

class Aboutit extends StatelessWidget {
  const Aboutit({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Encontre e ajude a comunidade a encontrar        os preços baixos nos supermercados de sua região \n\nFaça sua lista de compras e defina sua rota',
                style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff172823),
                height: 1.2
            ),
          ),
        ],
      ),
    );
  }
}
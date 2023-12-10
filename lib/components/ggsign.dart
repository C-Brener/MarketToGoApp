import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class GgSign extends StatelessWidget {
  const GgSign({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              PhosphorIcons.google_logo_bold,
              size: 25,
              color: Colors.black,
            ),
             Text(
              'Login com o Google',
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
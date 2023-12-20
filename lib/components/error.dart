import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class ErrorComponent extends StatelessWidget {
  const ErrorComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              PhosphorIcons.bug,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 16),
            Text(
              'Ops! Algo deu errado.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              'Por favor, tente novamente mais tarde.',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
      );
  }
}
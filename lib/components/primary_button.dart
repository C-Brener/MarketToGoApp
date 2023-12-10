import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final void Function() onClick;
  final String textButton;
  const PrimaryButton({super.key, required this.onClick, required this.textButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: 275,
      child: ElevatedButton(
      onPressed: onClick,
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xff172823),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
        ),
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color(0xffCFFCEE)
          ),
        ),
      ),
    );
  }
}
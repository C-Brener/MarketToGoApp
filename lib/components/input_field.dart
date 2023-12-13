import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final TextInputType typeOfInput;
  final String textPlaceHolder;
  final void Function(String) getText;
  final bool hideInformation;
  const InputField(
      {super.key,
      required this.typeOfInput,
      required this.textPlaceHolder,
      required this.getText,
      this.hideInformation = false});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            color: const Color(0xffD9D9D9),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: TextField(
              keyboardType: widget.typeOfInput,
              obscureText: widget.hideInformation,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.textPlaceHolder,
              ),
              onChanged: (typedText) {
                widget.getText(typedText);
              },
            ),
          ),
        )
      ],
    );
  }
}

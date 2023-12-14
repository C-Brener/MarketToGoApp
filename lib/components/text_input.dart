import 'package:flutter/material.dart';
import 'package:market_to_go/components/input_field.dart';

class TextInput extends StatelessWidget {
  final String textTitleComponent;
  final String placeHolder;
  final void Function(String) getText;
  const TextInput(
      {super.key,
      required this.textTitleComponent,
      required this.placeHolder,
      required this.getText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(4,0,0,8),
          child: Text(
            textTitleComponent,
            style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        ),
        InputField(
            typeOfInput: TextInputType.name,
            textPlaceHolder: placeHolder,
            getText: (productname) => {})
      ],
    );
  }
}

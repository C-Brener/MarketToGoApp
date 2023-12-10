import 'package:flutter/material.dart';
import 'package:market_to_go/components/input_field.dart';
import 'package:market_to_go/components/primary_button.dart';
import 'package:market_to_go/models/register_model.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  RegisterModel? registerModel;
  var name = "";
  var email = "";
  var password = "";
  var confirmPassword = "";
  var data = "";
  @override
  Widget build(BuildContext context) {
    const double defaultPadding = 10;
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                "FAÇA SEU CADASTRO",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 25,
              ),
              InputField(
                  typeOfInput: TextInputType.name,
                  textPlaceHolder: "Digite seu nome completo*",
                  getText: (name) => {name = name}),
              const SizedBox(
                height: defaultPadding,
              ),
              InputField(
                  typeOfInput: TextInputType.emailAddress,
                  textPlaceHolder: "Insira seu e-mail*",
                  getText: (email) => {email = email}),
              const SizedBox(
                height: defaultPadding,
              ),
              InputField(
                  typeOfInput: TextInputType.datetime,
                  textPlaceHolder: "Insira sua data de nascimento",
                  getText: (data) => {data = data}),
              const SizedBox(
                height: defaultPadding,
              ),
              InputField(
                typeOfInput: TextInputType.visiblePassword,
                textPlaceHolder: "Insira sua senha",
                getText: (data) => {password = data},
                hideInformation: true,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              InputField(
                typeOfInput: TextInputType.visiblePassword,
                textPlaceHolder: "Confirme sua senha",
                getText: (data) => {confirmPassword = data},
                hideInformation: true,
              ),
              const SizedBox(height: 90),
              PrimaryButton(
                  onClick: () {
                    registerModel = RegisterModel(
                        name: name,
                        email: email,
                        date: DateTime.now(),
                        confirmPassword: confirmPassword,
                        password: password);

                    print("Testando ${registerModel?.email}");
                  },
                  textButton: "Concluir")
            ],
          )),
    );
  }
}

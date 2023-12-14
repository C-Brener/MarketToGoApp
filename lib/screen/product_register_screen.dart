import 'package:flutter/material.dart';
import 'package:market_to_go/components/primary_button.dart';
import 'package:market_to_go/components/text_input.dart';

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
      backgroundColor: const Color.fromARGB(255, 174, 174, 174),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextInput(
                  textTitleComponent: "Nome do Produto*",
                  placeHolder: "Nome do produto",
                  getText: (nameProduct) => {}),
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 113, vertical: 16),
                  child: TextInput(
                      textTitleComponent: "Preço do produto*",
                      placeHolder: "Preço do produto",
                      getText: (nameProduct) => {}),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: TextInput(
                            textTitleComponent: "Preço no Varejo",
                            placeHolder: "Varejo Preço",
                            getText: (text) => {}
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(16, 0, 0, 0)),
                      Expanded(
                        child: TextInput(
                            textTitleComponent: "Preço com desconto",
                            placeHolder: "Preço com desconto",
                            getText: (text) => {}
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextInput(
                textTitleComponent: 'Descrição do Produto',
                placeHolder: 'Escreva aqui...',
                getText: (text) => {}
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextInput(textTitleComponent: 'Categoria do produto*',
                placeHolder: 'Digite a cetegoria ',
                getText: (text) => {}
              ),
            )
          ],
        ),
      ),

      floatingActionButton: PrimaryButton(
        onClick: (){

        },
        textButton: 'Cadastrar'
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

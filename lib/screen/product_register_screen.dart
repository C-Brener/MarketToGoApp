import 'package:flutter/material.dart';
import 'package:market_to_go/components/text_input.dart';
import 'package:market_to_go/data/models/product_model.dart';

class RegisterProduct extends StatefulWidget {
  final void Function(ProductModel) registerProduct;
  const RegisterProduct({super.key, required this.registerProduct});

  @override
  State<RegisterProduct> createState() => _RegisterProductState();
}

class _RegisterProductState extends State<RegisterProduct> {
  var name = "";
  var market = "";
  var price = 0.0;
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextInput(
                textTitleComponent: "Nome do Produto*",
                placeHolder: "Nome do produto",
                getText: (nameProduct) => {name = nameProduct}),
          ),
          const Divider(
            height: 2,
            color: Colors.red,
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
                    getText: (priceProduct) =>
                        {price = double.parse(priceProduct)}),
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
                          getText: (text) => {}),
                    ),
                    const Padding(padding: EdgeInsets.fromLTRB(16, 0, 0, 0)),
                    Expanded(
                      child: TextInput(
                          textTitleComponent: "Nome do Mercado",
                          placeHolder: "Nome do mercado",
                          getText: (text) => {market = text}),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    widget.registerProduct(ProductModel(
                        name: name,
                        price: price,
                        salePrice: 12,
                        retailPrice: 1,
                        description: name,
                        category: "category",
                        market: market));
                  },
                  child: const Text("Clicke me"))
            ],
          ),
          const Divider(
            height: 2,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

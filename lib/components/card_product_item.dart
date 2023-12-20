import 'package:flutter/material.dart';

class CardProductItem extends StatelessWidget {
  final String name;
  final double price;
  final String market;
  const CardProductItem(
      {super.key,
      required this.name,
      required this.market,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Define a elevação (sombreamento) do card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Define a borda do card
        side: const BorderSide(
            color:
                Colors.grey), // Opcional: Adiciona uma borda ao redor do card
      ),
      child: ListTile(
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Preço: $price'),
            Text('Mercado: $market'),
          ],
        ),
        leading: const Icon(Icons.star), // Ícone à esquerda do ListTile
        trailing:
            const Icon(Icons.arrow_forward), // Ícone à direita do ListTile
        onTap: () {
          // Ação ao tocar no ListTile
        },
      ),
    );
  }
}

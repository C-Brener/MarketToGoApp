import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:market_to_go/components/card_product_item.dart';
import 'package:market_to_go/components/empty.dart';
import 'package:market_to_go/components/error.dart';
import 'package:market_to_go/data/http/http_client.dart';
import 'package:market_to_go/data/repository/product_repository.dart';
import 'package:market_to_go/screen/product_store.dart';
import 'package:market_to_go/screen/product_register_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final ProductStore store =
      ProductStore(repository: ProductRepository(client: HttpClient()));

  @override
  void initState() {
    super.initState();
    store.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/images/Background_mainPage.png'),
              fit: BoxFit.contain,
              alignment: Alignment(0.0, -0.3))),
      child: Scaffold(
        floatingActionButton: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          RegisterProduct(registerProduct: (data) {
                            Navigator.of(context).pop(true);
                            store.createProduct(body: data);
                            store.getProducts();
                          })));
            },
            child: const Icon(
              PhosphorIcons.plus_bold,
              size: 25,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(12, 46.0, 0, 0),
          child: AnimatedBuilder(
              animation:
                  Listenable.merge([store.isLoading, store.erro, store.state]),
              builder: (context, child) {
                if (store.isLoading.value) {
                  return const CircularProgressIndicator();
                }
                if (store.erro.value.isNotEmpty) {
                  return const ErrorComponent();
                }
                if (store.state.value.isEmpty) {
                  return const Empty();
                } else {
                  final items = store.state.value;
                  return ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return CardProductItem(name: items[index].name , price: items[index].price, market: items[index].market,);
                      });
                }
              }),
        ),
      ),
    );
  }
}
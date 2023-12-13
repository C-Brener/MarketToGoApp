import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:market_to_go/screen/product_register_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/Background_mainPage.png'),
          fit: BoxFit.contain,
          alignment: Alignment(0.0, -0.3)
          )
      ),
      child: Scaffold(
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterProduct()));
          },
        child: const Icon(
              PhosphorIcons.plus_bold,
              size: 25,
              color: Colors.black,
        )),
        backgroundColor: Colors.transparent,
        body: const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.fromLTRB(12, 46.0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



                              // Navigator.push(context, MaterialPageRoute(builder: ((context) => const RegisterProduct())));
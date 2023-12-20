import 'package:flutter/material.dart';
import 'package:market_to_go/components/aboutit.dart';
import 'package:market_to_go/components/alreadyhave.dart';
import 'package:market_to_go/components/ggsign.dart';
import 'package:market_to_go/components/primary_button.dart';
import 'package:market_to_go/components/register_bottom_sheet.dart';
import 'package:market_to_go/components/signin.dart';
import 'package:market_to_go/components/welcome.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/backgroundlogin.png'),
          fit: BoxFit.contain,
          alignment: Alignment(0.0, 0.85)
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 46.0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo2.png',
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
                  child: Welcome(
                    
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(2.5, 8.0, 91, 0),
                  child: Aboutit(),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: PrimaryButton(
                    textButton: 'CADASTRE-SE',
                    onClick: () {
                      showBottomSheet(context: context, builder: (context){
                        return const RegisterForm();
                      });
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Alreadyhave(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(135, 3, 135, 0),
                  child: SignIn(),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(90, 3, 90, 0),
                  child: GgSign(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:ecommerceapp/views/screens/authentification/SignInScreen.dart';
import 'package:ecommerceapp/views/screens/authentification/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return SignInScreen();
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: UtilsColors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(300, 50)),
                child: const Text(
                  'Connexion',
                  style: TextStyle(
                      fontFamily: 'SFProDisplayMedium',
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              const SizedBox(height: 50),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Vous n'avez pas de compte ?  ",
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'SFProDisplayRegular'),
                    ),
                    TextSpan(
                        text: "Inscrivez-vous",
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'SFProDisplayMedium'),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return SignUpScreen();
                              },
                            );
                          }),
                  ],
                ),
              ),
              const SizedBox(height: 25,)
            ],
          ),
        ),
      ),
    );
  }
}

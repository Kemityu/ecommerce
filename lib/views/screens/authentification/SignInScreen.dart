import 'package:ecommerceapp/views/components/InputComponent/Input_component.dart';
import 'package:ecommerceapp/views/components/buttonComponent/button.dart';
import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:ecommerceapp/views/screens/authentification/signup_screen.dart';
import 'package:ecommerceapp/views/screens/home_pageScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => SignInScreenState();
}

class SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  late bool _PassworIsVisible = false;
  final RegExp emailRegExp =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight - 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: UtilsColors.gray,
          ),
          const Text(
            'Bon  retour parmi nous !',
            style: TextStyle(
              fontFamily: 'SFProDisplayBold',
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  InputComponent(
                    controller: _controller1,
                    name: 'Entrez votre mail',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputComponent(
                    controller: _controller2,
                    name: 'Entrez votre mot de passe',
                    obscureText: !_PassworIsVisible,
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _PassworIsVisible = !_PassworIsVisible;
                        });
                      },
                      icon: Icon(_PassworIsVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Mot de passe oublié',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'SFProDisplayRegular',
                          fontWeight: FontWeight.w300,
                          color: UtilsColors.orange,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePagescreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: UtilsColors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(300, 50)),
                    child: const Text(
                      "Connexion",
                      style: TextStyle(
                          fontFamily: 'SFProDisplayMedium',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Vous n'avez pas de compte ?  ",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'SFProDisplayRegular'),
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
                                    return const SignUpScreen();
                                  },
                                );
                              }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

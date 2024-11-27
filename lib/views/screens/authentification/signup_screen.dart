import 'package:ecommerceapp/views/components/InputComponent/Input_component.dart';
import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:ecommerceapp/views/screens/home_pageScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  final TextEditingController _controller5 = TextEditingController();
  late bool _PasswordIsVisible = false;
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
          CircleAvatar(
            radius: 50,
            backgroundColor: UtilsColors.gray,
          ),
          Text(
            'Créer votre compte',
            style: TextStyle(
              fontFamily: 'SFProDisplayBold',
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  InputComponent(
                    controller: _controller1,
                    name: 'Entrez votre nom',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputComponent(
                    controller: _controller2,
                    name: 'Entrez votre prénoms',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InputComponent(
                      controller: _controller3,
                      name: 'Entrez votre numero de téléphone'),
                  const SizedBox(
                    height: 10,
                  ),
                  InputComponent(
                      controller: _controller4, name: 'Entrez votre mail'),
                  const SizedBox(
                    height: 10,
                  ),
                  InputComponent(
                    controller: _controller5,
                    name: 'Entrez votre mot de passe',
                    obscureText: _PasswordIsVisible,
                    suffix: IconButton(
                      onPressed: () {
                        setState(() {
                          _PasswordIsVisible = !_PasswordIsVisible;
                        });
                      },
                      icon: Icon(_PasswordIsVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
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
                      "S'inscire",
                      style: TextStyle(
                          fontFamily: 'SFProDisplayMedium',
                          color: Colors.white,
                          fontSize: 16),
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

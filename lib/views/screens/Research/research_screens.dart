import 'package:ecommerceapp/views/components/InputComponent/Input_component.dart';
import 'package:ecommerceapp/views/screens/Research/Recommended.dart';
import 'package:ecommerceapp/views/screens/Research/SearchBarComponent.dart';
import 'package:ecommerceapp/views/screens/Research/mostfound.dart';
import 'package:flutter/material.dart';

class ResaerchScreens extends StatefulWidget {
  const ResaerchScreens({super.key});

  @override
  State<ResaerchScreens> createState() => _ResaerchScreensState();
}

class _ResaerchScreensState extends State<ResaerchScreens> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: SearchBarComponent(
          controller: _controller1,
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Les plus recherchés',
                    style: TextStyle(
                      fontFamily: 'SFProDisplayBold',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                  Mostfound(),
                   SizedBox(
                    height: 20,
                  ),
                   Text(
                    'Cela pourrait vous intéresser ',
                    style: TextStyle(
                      fontFamily: 'SFProDisplayBold',
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                   SizedBox(
                    height: 20,
                  ),
                   Recommended()
                ],
              )),
        ),
      ),
    );
  }
}

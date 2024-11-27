import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:ecommerceapp/views/screens/Research/research_screens.dart';
import 'package:ecommerceapp/views/screens/checkout/checkout_screen.dart';
import 'package:flutter/material.dart';

class HomePagescreen extends StatelessWidget {
  const HomePagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckoutScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: UtilsColors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(300, 50)),
                child: const Text(
                  'Page de paiement',
                  style: TextStyle(
                      fontFamily: 'SFProDisplayMedium',
                      color: Colors.white,
                      fontSize: 16),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResaerchScreens()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: UtilsColors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(300, 50)),
                child: const Text(
                  'Page de recherche',
                  style: TextStyle(
                      fontFamily: 'SFProDisplayMedium',
                      color: Colors.white,
                      fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}

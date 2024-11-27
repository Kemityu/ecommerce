import 'dart:convert';

import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int? selectedPaiement;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenHeight * 0.17,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: UtilsColors.gray.withOpacity(0.5),
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.location_on_outlined,
                              color: UtilsColors.orange),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Adresse de livraison',
                            style: TextStyle(
                                fontFamily: 'SFProDisplayBold', fontSize: 17),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: UtilsColors.orange.withOpacity(0.2)),
                            child: const Center(
                              child: Text(
                                'Home',
                                style: TextStyle(
                                    fontFamily: 'SFProDisplayMedium',
                                    color: UtilsColors.orange),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'JI. Rose No. 123 Block A, Cipete Sub District, Cilandak District, South Jakarta City,DKI Jakarta 12410 Indonesia ',
                                  softWrap: true,
                                  maxLines: 3,
                                  textAlign: TextAlign.justify,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'SFProDisplayMedium',
                                      fontSize: 13),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Albert Flores',
                                      style: TextStyle(
                                          fontFamily: 'SFProDisplayMedium'),
                                    ),
                                    const SizedBox(width: 5),
                                    CircleAvatar(
                                      backgroundColor: UtilsColors.gray,
                                      radius: 3,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      '081234567890',
                                      style: TextStyle(
                                          fontFamily: 'SFProDisplayMedium',
                                          fontSize: 13,
                                          color: UtilsColors.gray),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 70,
                    decoration: BoxDecoration(
                      color: UtilsColors.gray,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ipad Pro 6th Generation 11 inch 2022',
                          style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'SFProDisplayMedium',
                          ),
                        ),
                        Text(
                          'Space Gray Colors, Wi-fi only, 256GB',
                          style: TextStyle(
                              fontFamily: 'SFProDisplayRegular',
                              color: UtilsColors.gray),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              '15.299.000 FCFA',
                              style: TextStyle(fontFamily: 'SFProDisplayBold'),
                            ),
                            Spacer(),
                            Text(
                              'x1',
                              style: TextStyle(
                                  fontFamily: 'SFProDisplayRegular',
                                  color: UtilsColors.gray),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Selectionner le type d'expedition",
                    style:
                        TextStyle(fontFamily: 'SFProDisplayBold', fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'voir les autres options',
                      style: TextStyle(
                          fontFamily: 'SFProDisplayRegular',
                          color: UtilsColors.orange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: screenHeight * 0.1,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: UtilsColors.gray.withOpacity(0.5),
                    width: 1.5,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Express',
                            style: TextStyle(fontFamily: 'SFProDisplayMedium'),
                          ),
                          Text(
                            'Arrivée estimée : 9 - 10 juin',
                            style: TextStyle(
                                fontFamily: 'SFProDisplayRegular',
                                color: UtilsColors.gray),
                          ),
                        ],
                      ),
                      Text(
                        '50 000 FCFA',
                        style: TextStyle(fontFamily: 'SFProDisplayBold'),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Note:'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total'),
                      Text('15.349.000 FCFA',
                          style: TextStyle(
                              fontFamily: 'SFProDisplayBold',
                              color: UtilsColors.orange)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: UtilsColors.gray.withOpacity(0.5),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Methode de Paiement',
                style: TextStyle(fontFamily: 'SFProDisplayBold', fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPaiement = 0;
                        });
                      },
                      child: Container(
                        height: 75,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: selectedPaiement == 0
                                ? UtilsColors.orange.withOpacity(0.1)
                                : Colors.white,
                            border: Border.all(
                                color: selectedPaiement == 0
                                    ? UtilsColors.orange
                                    : UtilsColors.gray,
                                width: selectedPaiement == 0 ? 1.5 : 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.payments_rounded,
                                    color: UtilsColors.orange,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Cash',
                                    style: TextStyle(
                                        fontFamily: 'SFProDisplayMedium',
                                        fontSize: 14,
                                        color: selectedPaiement == 0
                                            ? UtilsColors.orange
                                            : Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                "Payer en espèces lorsque l'article arrive à destination",
                                style: TextStyle(
                                    color: selectedPaiement == 0
                                        ? UtilsColors.orange
                                        : UtilsColors.gray,
                                    fontFamily: 'SFProDisplayRegular',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPaiement = 1;
                        });
                      },
                      child: Container(
                        height: 75,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: selectedPaiement == 1
                                ? UtilsColors.orange.withOpacity(0.1)
                                : Colors.white,
                            border: Border.all(
                                color: selectedPaiement == 1
                                    ? UtilsColors.orange
                                    : UtilsColors.gray,
                                width: selectedPaiement == 1 ? 1.5 : 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.currency_exchange_rounded,
                                    size: 18,
                                    color: UtilsColors.orange,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Mobile Money',
                                    style: TextStyle(
                                      fontFamily: 'SFProDisplaymedium',
                                      fontSize: 14,
                                      color: selectedPaiement == 1
                                          ? UtilsColors.orange
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Payer en espèces lorsque l'article arrive à destination",
                                style: TextStyle(
                                  color: selectedPaiement == 1
                                      ? UtilsColors.orange
                                      : UtilsColors.gray,
                                  fontFamily: 'SFProDisplayRegular',
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedPaiement = 2;
                        });
                      },
                      child: Container(
                        height: 75,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: selectedPaiement == 2
                                ? UtilsColors.orange.withOpacity(0.1)
                                : Colors.white,
                            border: Border.all(
                                color: selectedPaiement == 2
                                    ? UtilsColors.orange
                                    : UtilsColors.gray,
                                width: selectedPaiement == 2 ? 1.5 : 0.5)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    size: 18,
                                    Icons.payment_rounded,
                                    color: UtilsColors.orange,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Carte Visa',
                                    style: TextStyle(
                                        fontFamily: 'SFProDisplaymedium',
                                        fontSize: 14,
                                        color: selectedPaiement == 2
                                            ? UtilsColors.orange
                                            : Colors.black),
                                  ),
                                ],
                              ),
                              Text(
                                "Ajouter votre carte visa pour effectuer le paiement",
                                style: TextStyle(
                                    color: selectedPaiement == 2
                                        ? UtilsColors.orange
                                        : UtilsColors.gray,
                                    fontFamily: 'SFProDisplayRegular',
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: screenWidth,
        height: 120,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0.0, -1.0),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
          
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontFamily: 'SFProDisplayRegular',
                        color: UtilsColors.gray),
                  ),
                  const SizedBox(height: 10,),
                  Text(
                    '15.349.000 FCFA',
                    style: TextStyle(fontFamily: 'SFProDisplayBold'),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: UtilsColors.orange,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  child: Text(
                    'Checkout',
                    style: TextStyle(
                        fontFamily: 'SFProDisplayMedium', color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

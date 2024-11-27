import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;

  const SearchBarComponent({
    super.key,
    required this.controller,
    this.placeholder = 'Recherchez vos produits...',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: UtilsColors.gray,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: UtilsColors.gray,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              controller: controller,
              style: const TextStyle(
                fontFamily: 'SFProDisplayRegular',
                fontSize: 18,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: placeholder,
                hintStyle: const TextStyle(
                  color: UtilsColors.gray,
                  fontSize: 16,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          const Icon(
            Icons.menu,
            color: UtilsColors.gray,
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputComponent extends StatefulWidget {
  final TextEditingController controller;
  final String name;
  final bool space;
  final String text;
  final bool obscureText;
  final IconButton? suffix;

  const InputComponent({
    super.key,
    required this.controller,
    required this.name,
    this.space = false,
    this.text = '',
    this.obscureText = false,
    this.suffix,
  });

  _InputComponent createState() => _InputComponent();
}

class _InputComponent extends State<InputComponent> {
  bool error = false;

  @override
  Widget build(BuildContext context) {
    List<TextInputFormatter> inputFormatters = [];

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
            ),
          ),
          child: TextFormField(
            cursorColor: Colors.black,
            controller: widget.controller,
            obscureText: widget.obscureText,
            inputFormatters: inputFormatters,
            onChanged: (value) {
              setState(() {
                error = value.isEmpty;
              });
            },
            validator: (value) {
              setState(() {
                error = value!.isEmpty;
              });
              return null;
            },
            style: const TextStyle(
              fontFamily: 'SFProDisplayRegular',
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              hintText: widget.name,
              hintStyle: const TextStyle(
                fontFamily: 'SFProDisplayRegular',
                fontSize: 14,
              ),
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              suffixIcon: widget.suffix,
            ),
          ),
        ),
        if (error)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              'Saisissez un ${widget.name} correct',
              style: const TextStyle(
                color: UtilsColors.orange,
                fontSize: 12,
              ),
              textAlign: TextAlign.right,
            ),
          ),
      ],
    );
  }
}

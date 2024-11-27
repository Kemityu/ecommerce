// import 'package:flutter/material.dart';

// class ButtonText extends StatelessWidget {
//   final String text;
//   final TextStyle style;

//   const ButtonText({
//     super.key,
//     required this.text,
//     required this.style,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: style,
//     );
//   }
// }

// class Button extends StatelessWidget {
//   final Color backgroundColor;
//   final String text;

//   final VoidCallback? onClick;
//   final OutlinedBorder shape;
//   final double width;
//   final double height;
//     final TextStyle textStyle;
//   const Button({
//     super.key,
//     this.text = '',
//     required this.backgroundColor,
//     this.onClick,
//     required this.shape,
//     required this.width,
//     required this.height, required this.textStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onClick,
//         style: ElevatedButton.styleFrom(
//             backgroundColor: backgroundColor,
//             minimumSize: Size(width, height),
//             shape: shape),
//         child: ButtonText(text: text, style: textStyle));
//   }
// }

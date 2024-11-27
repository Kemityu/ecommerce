import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:flutter/material.dart';

class Mostfound extends StatefulWidget {
  const Mostfound({super.key});

  @override
  State<Mostfound> createState() => _MostfoundState();
}

class _MostfoundState extends State<Mostfound> {
  final List<Article> articles = [
    Article(
      title: "Fossil Watch",
    ),
    Article(
      title: "Iphone 14 Pro",
    ),
    Article(
      title: "Gaming Chair",
    ),
    Article(
      title: "New balance",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 2,
      ),
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        final article = articles[index];

        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: UtilsColors.gray.withOpacity(0.5))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Text(
                  article.title,
                  style: const TextStyle(
                      fontSize: 14, fontFamily: 'SFProDisplayBold',),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class Article {
  final String title;

  Article({
    required this.title,
  });
}

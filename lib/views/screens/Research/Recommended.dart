import 'package:ecommerceapp/views/components/colors/utilis.dart';
import 'package:flutter/material.dart';

class Recommended extends StatefulWidget {
  const Recommended({super.key});

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  final List<Article> articles = [
    Article(
        title: "Article 1 ",
        price: 2000,
        rating: 4.5,
        location: "Abidjan",
        stock: 5),
    Article(
        title: "Article 2",
        price: 3500,
        rating: 4.2,
        location: "Bouaké",
        stock: 10),
    Article(
        title: "Article 3",
        price: 5000,
        rating: 4.7,
        location: "San Pedro",
        stock: 2),
    Article(
        title: "Article 4",
        price: 1250,
        rating: 3.9,
        location: "Yamoussoukro",
        stock: 8),
    Article(
        title: "Article 5",
        price: 2200,
        rating: 4.1,
        location: "Korhogo",
        stock: 15),
    Article(
        title: "Article 6",
        price: 4000,
        rating: 4.8,
        location: "Daloa",
        stock: 4),
    Article(
        title: "Article 7",
        price: 1500,
        rating: 3.5,
        location: "Sassandra",
        stock: 3),
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
          childAspectRatio: 0.8),
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        final article = articles[index];

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(color: UtilsColors.gray.withOpacity(0.5)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title,
                      softWrap: true,
                      style: const TextStyle(
                          fontSize: 14, fontFamily: 'SFProDisplayMedium'),
                    ),
                    Text(
                      '${article.price.toInt()} FCFA',
                      style: const TextStyle(
                          fontSize: 14, fontFamily: 'SFProDisplayBold'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          article.rating.toString(),
                          style:
                              const TextStyle(fontFamily: 'SFProDisplayMedium'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text('${article.stock.toString()} art. dispo',
                              softWrap: true,
                              style: const TextStyle(
                                  fontFamily: 'SFProDisplayMedium')
                              // overflow: TextOverflow.ellipsis,
                              ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on,
                            color: UtilsColors.orange),
                        const SizedBox(width: 6.0),
                        Text(article.location,
                            style: const TextStyle(
                                fontSize: 12,
                                fontFamily: 'SFProDisplaySemiBold')),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Article {
  final String title;
  final double price;
  final double rating;
  final String location;
  final int stock;

  Article({
    required this.title,
    required this.price,
    required this.rating,
    required this.location,
    required this.stock,
  });
}

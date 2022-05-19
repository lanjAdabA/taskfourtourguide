import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: camel_case_types, must_be_immutable
class cards extends StatefulWidget {
  String title;
  String images;
  cards({Key? key, required this.title, required this.images})
      : super(key: key);

  @override
  State<cards> createState() => _cardsState();
}

// ignore: camel_case_types
class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              RatingBar.builder(
                initialRating: 3,
                itemSize: 24,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  //    print(rating);
                },
              )
            ]),
      ),
      margin: const EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage('assets/images/' + widget.images + ".jpg"),
              fit: BoxFit.cover)),
    );
  }
}

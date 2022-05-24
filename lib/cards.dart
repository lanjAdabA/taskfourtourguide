import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: camel_case_types, must_be_immutable
class Cards extends StatefulWidget {
  String title;
  String images;

  final int rating;

  Cards(
      {Key? key,
      required this.title,
      required this.images,
      required this.rating})
      : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

// ignore: camel_case_types
class _CardsState extends State<Cards> {
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
              //   RatingBarIndicator(itemBuilder: ((context, index) => ))
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
              image: AssetImage('assets/images/' + widget.images),
              fit: BoxFit.cover)),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/models/articlemodel.dart';

class Newstile extends StatefulWidget {
  const Newstile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<Newstile> createState() => _NewstileState();
}

class _NewstileState extends State<Newstile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            widget.articleModel.image??'https://www.google.com/url?sa=i&url=https%3A%2F%2Fstandout-cv.com%2Fjob-search%2Fhow-long-to-wait-after-submitting-job-application-online&psig=AOvVaw1DTr6JbIsJab1Kd-AE6YPJ&ust=1755961474553000&source=images&cd=vfe&opi=89978449&ved=0CBUQjRxqFwoTCNDIoLPYno8DFQAAAAAdAAAAABAE',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Text(
          widget.articleModel.titel,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
         Text(
          widget.articleModel.suptitel??"",
          maxLines: 2,
          style: TextStyle(
            color: Color.fromARGB(255, 100, 98, 98),
            fontSize: 15,
          ),
        ),

        const SizedBox(height: 8),
      ],
    );
  }
}

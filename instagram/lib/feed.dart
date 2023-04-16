import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  final String imageUrl;
  const Feed({
    required this.imageUrl,
    super.key,
  });

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          widget.imageUrl,
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: Icon(
                  CupertinoIcons.heart,
                  color: isFavorite ? Colors.pink : Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(CupertinoIcons.chat_bubble),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(CupertinoIcons.bookmark),
                onPressed: () {},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '2 Likes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            "My cat is docile even when bathed. I put a duck on his head in the wick and he's staring at me. Isn't it so cute??",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'FEBURARY 6',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

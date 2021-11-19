import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(16),
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: -2, end: 0),
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut,
        builder: (context, double value, _) {
          return Transform.translate(
            offset: Offset(width * value, 0),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: width * .4,
                  bottom: height * .4,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.blueGrey,
                    child: RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "TITLE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                        TextSpan(
                          text:
                              "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                          style: TextStyle(
                            color: Colors.white70,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: width * .4,
                  top: height * .5,
                  child: Image.asset(
                    'assets/good_news.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
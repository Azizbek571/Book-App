import 'package:flutter/material.dart';

class RecommendedBooks extends StatelessWidget {
  final String imagePath;
  final String label;
  final double width;

  const RecommendedBooks({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      decoration: BoxDecoration(
        color: const Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Image.asset(imagePath),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          )
        ],
      ),
    );
  }
}

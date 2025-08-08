import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 18),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: onTap,
            child: Row(
              children: const [
                Text(
                  "Batafsil",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8599FF),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 12,
                  color: Color(0xff8599FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

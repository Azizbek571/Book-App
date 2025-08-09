import 'package:book_app/config/book_detail_page.dart';
import 'package:book_app/config/images.dart';
import 'package:flutter/material.dart';

class NewlyAddedBookitem extends StatelessWidget {
  final Map<String, dynamic> book;

  const NewlyAddedBookitem({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = _buildHorizontalBook(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BookDetailPage(book: book),
          ),
        );
      },
      child: content,
    );
  }

  Widget _buildHorizontalBook(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // return

    return Container(
      width: screenWidth * 0.7,
      margin: EdgeInsets.only(right: 20, top: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))
          ]),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  book["image"],
                  width: 73,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 21),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    book["title"],
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    book["author"],
                    style: TextStyle(
                        color: Color(0xff6A6A8B),
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                  SizedBox(height: 9),
                  Text(
                    book["listeners"],
                    style: TextStyle(
                        color: Color(0xff6A6A8B),
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Row(
                    children: List.generate(5, (star) {
                      return Icon(Icons.star,
                          size: 18,
                          color: star < book["rating"]
                              ? Colors.orange
                              : Colors.grey[300]);
                    }),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.1))),
                        child: Image.asset(AppImages.headphones,
                            width: 18, height: 18),
                      ),
                      SizedBox(width: 15),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.1))),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 18),
                            Text("${book['rating'].toStringAsFixed(1)}")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ))
            ],
          )),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))
      ],
    );
  }
}

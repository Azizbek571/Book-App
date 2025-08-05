import 'package:book_app/config/images.dart';
import 'package:flutter/material.dart';

class ArtBooksTab extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "rating": 4,
    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "rating": 5,
    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "rating": 2,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Siz uchun tavsiya",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Row(
                children: [
                  Text("Batafsil",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8599FF))),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                    color: Color(0xff8599FF),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 390,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Container(
                    width: 160,
                    margin: EdgeInsets.only(right: 20, top: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(2, 2))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(book["image"],
                              height: 234,
                              width: double.infinity,
                              fit: BoxFit.fill),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                book["title"],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                book["author"],
                                style: TextStyle(
                                    color: Color(0xff4838D1),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.menu_book_outlined,
                                      color: Color(0xff4838D1), size: 14),
                                  Image.asset(AppImages.vector,
                                      width: 14, height: 14),
                                  Image.asset(AppImages.headphones,
                                      width: 14, height: 14),
                                  SizedBox(width: 15),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffF77A55),
                                    size: 12,
                                  ),
                                  Text("4.0")
                                ],
                              )
                              // Row(
                              //     children: List.generate(5, (star) {
                              //   return Icon(
                              //     Icons.star,
                              //     size: 16,
                              //     color: star < book["rating"]
                              //         ? Colors.amber
                              //         : Colors.grey[300],
                              //   );
                              // })),
                            ],
                          ),
                        )
                      ],
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}

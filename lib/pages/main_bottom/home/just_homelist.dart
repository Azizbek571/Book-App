import 'package:book_app/config/bookitem.dart';
import 'package:flutter/material.dart';

class JustHomelist extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
    },
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
    },
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
    },
  ];
  JustHomelist({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: List.generate(books.length, (index) {
            return BookItem(
              book: books[index],
              isHorizontal: false,
            );
          }),
        )

        // Column(
        //   children: [

        //     ...List.generate(books.length, (index) {
        //       final book = books[index];
        //       return Container(
        //         width: screenWidth,
        //         margin: EdgeInsets.only(top: 12),
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(15),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.black12,
        //                 blurRadius: 6,
        //                 offset: Offset(2, 2))
        //           ],
        //         ),
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
        //           child: Row(
        //             children: [
        //               ClipRRect(
        //                 borderRadius: BorderRadius.circular(12),
        //                 child: Image.asset(
        //                   book["image"],
        //                   width: 73,
        //                   height: 110,
        //                   fit: BoxFit.cover,
        //                 ),
        //               ),
        //               const SizedBox(width: 21),
        //               Expanded(
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(book["title"],
        //                         style: TextStyle(
        //                             fontWeight: FontWeight.w500, fontSize: 16)),
        //                     Text(book["author"],
        //                         style: TextStyle(
        //                             color: Color(0xff6A6A8B),
        //                             fontWeight: FontWeight.w500,
        //                             fontSize: 12)),


        //                     SizedBox(height: 9),
        //                     Text(book["listeners"],
        //                         style: TextStyle(
        //                             color: Color(0xff6A6A8B),
        //                             fontWeight: FontWeight.w400,
        //                             fontSize: 12)),
        //                     Row(
        //                       children: [
        //                         Row(
        //                           children: List.generate(5, (star) {
        //                             return Icon(Icons.star,
        //                                 size: 18,
        //                                 color: star < book["rating"]
        //                                     ? Colors.orange
        //                                     : Colors.grey[300]);
        //                           }),
        //                         ),
        //                         SizedBox(width: 26),
        //                         Container(
        //                           padding: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(4),
        //                             border: Border.all(
        //                               color: Colors.grey.withOpacity(0.1),
        //                             ),
        //                           ),
        //                           child: Image.asset(AppImages.headphones,
        //                               width: 18, height: 18),
        //                         ),
        //                         SizedBox(width: 8),
        //                         Container(
        //                           padding: EdgeInsets.all(5),
        //                           decoration: BoxDecoration(
        //                             borderRadius: BorderRadius.circular(4),
        //                             border: Border.all(
        //                               color: Colors.grey.withOpacity(0.1),
        //                             ),
        //                           ),
        //                           child: Row(
        //                             children: [
        //                               Icon(Icons.star,
        //                                   color: Colors.orange, size: 18),
        //                               Text(
        //                                   "${book['rating'].toStringAsFixed(1)}"),
        //                             ],
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //               )
        //             ],
        //           ),
        //         ),
        //       );
        //     })
        //   ],
        // ),
        );
  }
}

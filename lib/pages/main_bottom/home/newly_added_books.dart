import 'package:book_app/config/images.dart';
import 'package:flutter/material.dart';

class NewlyAddedBooks extends StatelessWidget {
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
  NewlyAddedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Yangi qo'shilgan kitoblar",
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
            height: screenHeight * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Container(
                  width: screenWidth * 0.7,

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
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 7),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 16),
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
                                            color:
                                                Colors.grey.withOpacity(0.1))),
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
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 18),
                                        Text(
                                            "${book['rating'].toStringAsFixed(1)}")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ))
                        ],
                      )),

                  //  Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  //   child: ListTile(

                  //     leading: SizedBox(
                  //       height:110 ,
                  //       width: 73,
                  //       child: Image.asset(book["image"],height: 200,)) ,
                  //     title: Text(book["title"]),
                  //   ),
                  // ),
                  // child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     ClipRRect(

                  //       borderRadius: BorderRadius.circular(15),
                  //       child: Image.asset(book["image"],
                  //           height:110 ,
                  //           width: double.infinity,
                  //           fit: BoxFit.contain),
                  //     ),

                  // Padding(
                  //   padding: EdgeInsets.all(8),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         book["title"],
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold, fontSize: 16),
                  //         maxLines: 2,
                  //         overflow: TextOverflow.ellipsis,
                  //       ),
                  //       SizedBox(height: 4),
                  //       Text(
                  //         book["author"],
                  //         style: TextStyle(
                  //             color: Color(0xff4838D1), fontSize: 13, fontWeight: FontWeight.w400),
                  //       ),
                  //       SizedBox(height: 8),
                  //       Row(
                  //         children: [
                  //           Icon(Icons.menu_book_outlined,
                  //           color: Color(0xff4838D1),
                  //           size:18 ,
                  //           ),
                  //          Image.asset(AppImages.vector,
                  //          width: 30,height: 20,
                  //          ),
                  //          Image.asset(AppImages.headphones,

                  //          width: 30,height: 20,
                  //          ),
                  //         ],
                  //       )
                  //       // Row(
                  //       //     children: List.generate(5, (star) {
                  //       //   return Icon(
                  //       //     Icons.star,
                  //       //     size: 16,
                  //       //     color: star < book["rating"]
                  //       //         ? Colors.amber
                  //       //         : Colors.grey[300],
                  //       //   );
                  //       // })),
                  //     ],
                  //   ),
                  // ),

                  //   ],
                  // ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:book_app/config/book_detail_page.dart';
import 'package:book_app/config/images.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Map<String, dynamic> book;
  final bool isHorizontal;

  const BookItem({
    super.key,
    required this.book,
    this.isHorizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = isHorizontal
        ? _buildHorizontalBook(context)
        : _buildVerticalBook(context);

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

 
  Widget _buildVerticalBook(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(book["image"], width: 73, height: 110, fit: BoxFit.cover),
          ),
          const SizedBox(width: 21),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book["title"], style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                Text(book["author"], style: const TextStyle(color: Color(0xff6A6A8B), fontSize: 14)),
           
                            SizedBox(height: 9),
                            Text(book["listeners"],
                                style: TextStyle(
                                    color: Color(0xff6A6A8B),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12)),
                                    Row(children: [ 
                               Row(
                                  children: List.generate(5, (star) {
                                    return Icon(Icons.star,
                                        size: 18,
                                        color: star < book["rating"]
                                            ? Colors.orange
                                            : Colors.grey[300]);
                                  }),
                                ),
                                SizedBox(width: 26),
                                                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                          Icon(Icons.menu_book_outlined,
                                            color: Color(0xff4838D1), size: 14),
                                        Image.asset(AppImages.vector,
                                            width: 14, height: 18),
                                      Image.asset(AppImages.headphones,
                                          width: 18, height: 18),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container( 
                                                                padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.1),
                                    ),
                                  ),
                                  child:  Row(children: [ 
                                                                     Icon(Icons.star,
                                          color: Colors.orange, size: 18),
                                      Text(
                                          "${book['rating'].toStringAsFixed(1)}"),
                                  ],)
                                  
                                  ,
                                )

                                    ],)




              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildHorizontalBook(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 20, top: 12),
      decoration: _boxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(book["image"], height: 234, width: double.infinity, fit: BoxFit.fill),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(book["title"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16), maxLines: 2, overflow: TextOverflow.ellipsis),
                Text(book["author"], style: const TextStyle(color: Color(0xff4838D1), fontSize: 13)),
                   SizedBox(height: 8),
                   Row(children: [ 
                    Container(
                                           padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.1))),
                                                child: Row(
                                      children: [
                                        Icon(Icons.menu_book_outlined,
                                            color: Color(0xff4838D1), size: 14),
                                        Image.asset(AppImages.vector,
                                            width: 14, height: 18),
                                        Image.asset(AppImages.headphones,
                                            width: 14, height: 18),
                                        SizedBox(width: 15),
                                      ],
                                    ), 
               

                    ),
                    SizedBox(height: 7),
                    Container( 
                                           padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.1))),
                                                child: Row(children: [ 
                                                     Icon(
                                          Icons.star,
                                          color: Color(0xffF77A55),
                                          size: 18,
                                        ),
                                        Text( 
                                            "${book['rating'].toStringAsFixed(1)}")             

                                        
                                                ],),
                           
                    )
                   ],)

                                //               SizedBox(height: 8),

                //               Row(
                //                 children: [
                //                   Container(
                //                     padding: EdgeInsets.all(5),
                //                     decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(4),
                //                         border: Border.all(
                //                             color:
                //                                 Colors.grey.withOpacity(0.1))),
                //                     child: Row(
                //                       children: [
                //                         Icon(Icons.menu_book_outlined,
                //                             color: Color(0xff4838D1), size: 14),
                //                         Image.asset(AppImages.vector,
                //                             width: 14, height: 18),
                //                         Image.asset(AppImages.headphones,
                //                             width: 14, height: 18),
                //                         SizedBox(width: 15),
                //                       ],
                //                     ),

                //                   ),
                //                   SizedBox(width: 7),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))],
    );
  }
}





// import 'package:book_app/config/book_detail_page.dart';
// import 'package:flutter/material.dart';
// import 'package:book_app/config/images.dart';


// class BookItem extends StatelessWidget {
//   final Map<String, dynamic> book;

//   const BookItem({super.key, required this.book});

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => BookDetailPage(book: book),
//           ),
//         );
//       },
//       child: Container(
//         width: screenWidth,
//         margin: const EdgeInsets.only(top: 12),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black12, blurRadius: 6, offset: Offset(2, 2))
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
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w500, fontSize: 16)),
//                     Text(book["author"],
//                         style: const TextStyle(
//                             color: Color(0xff6A6A8B),
//                             fontWeight: FontWeight.w500,
//                             fontSize: 12)),
//                     const SizedBox(height: 9),
//                     Text(book["listeners"],
//                         style: const TextStyle(
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
//                         const SizedBox(width: 26),
//                         Container(
//                           padding: const EdgeInsets.all(5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             border: Border.all(
//                               color: Colors.grey.withOpacity(0.1),
//                             ),
//                           ),
//                           child: Image.asset(AppImages.headphones,
//                               width: 18, height: 18),
//                         ),
//                         const SizedBox(width: 8),
//                         Container(
//                           padding: const EdgeInsets.all(5),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(4),
//                             border: Border.all(
//                               color: Colors.grey.withOpacity(0.1),
//                             ),
//                           ),
//                           child: Row(
//                             children: [
//                               const Icon(Icons.star,
//                                   color: Colors.orange, size: 18),
//                               Text("${book['rating'].toStringAsFixed(1)}"),
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
//       ),
//     );
//   }
// }

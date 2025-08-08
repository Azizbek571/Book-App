import 'package:book_app/config/images.dart';
import 'package:flutter/material.dart';

class BookDetailPage extends StatelessWidget {
  final Map<String, dynamic> book;

  const BookDetailPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(book["title"]),
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: IconButton(
                onPressed: () {}, icon: Image.asset(AppImages.vector2)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  book["image"],
                  height: 290,
                  width: 185,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                book["title"],
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              Text(
                book["author"],
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),

              const SizedBox(height: 10),

             Divider(thickness: 0.5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildStatItem(
                      icon: Icons.star,
                      iconColor: Colors.orange,
                      label: "Reyting",
                   value: (book["rating"] ?? 4.7).toStringAsFixed(1),

                    ),
                    _buildDivider(),

                    _buildStatItem(
                      label: "Davomiyligi",
                      value: book["duration"] ?? "10:28:27",
                    ),
                    _buildDivider(),

                    _buildStatItem(
                      label: "Ovoz",
                      value: book["voice"] ?? "Sayfullo Ikromov",
                      isBold: true,
                    ),
                    _buildDivider(),

                    _buildStatItem(
                      label: "Kategoriya",
                      value: book["category"] ?? "San’at",
                      isBold: true,
                    ),
                    _buildDivider(),

                    _buildStatItem(
                      label: "Hozir o‘qimoqda",
                      value: book["nowReading"] ?? "137 700",
                      isBold: true,
                    ),
                  ],
                ),
              ),
             Divider(thickness: 0.5),

            ],
          ),
        ),
      ),
    );
  }

  
  Widget _buildStatItem({
    IconData? icon,
    Color? iconColor,
    required String label,
    required String value,
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(color: Color(0xff9292A2), fontSize: 15),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
                         if (icon != null)
                Icon(icon, size: 24, color: iconColor ?? Colors.black),
              if (icon != null) const SizedBox(width: 4),
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper for divider
  Widget _buildDivider() {
    return Container(
      height: 50,
      width: 1,
      color: Colors.grey[300],
    );
  }
}


















// import 'package:book_app/config/images.dart';
// import 'package:flutter/material.dart';

// class BookDetailPage extends StatelessWidget {
//   final Map<String, dynamic> book;

//   const BookDetailPage({super.key, required this.book});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         title: Text(book["title"]),
//         elevation: 3,
//         shadowColor: Colors.black.withOpacity(0.3),
//         centerTitle: true,
//         leading: Padding(padding: const EdgeInsets.only(left: 25),
//           child: IconButton(
//               onPressed: () { Navigator.pop(context);},
//               icon: Icon(Icons.arrow_back_ios)),
//         ),
//         actions: [ 
//           Padding(padding: EdgeInsets.only(right: 25), 
//           child: IconButton(onPressed: (){}, icon: Image.asset(AppImages.vector2)),
//           )
//         ],
        
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Center(
//           child: Column(
//             children: [
//               SizedBox(height: 24),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   book["image"],
//                   height: 290,
//                   width: 185,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Text(book["title"],
//                   style: const TextStyle(
//                       fontSize: 26, fontWeight: FontWeight.w500)),
//               Text(book["author"],
//                   style: const TextStyle(fontSize: 20, color: Colors.grey)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



























// import 'package:flutter/material.dart';

// class BookDetailPage extends StatelessWidget {
//   final Map<String, dynamic> book;

//   const BookDetailPage({super.key, required this.book});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(book["title"])),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             Image.asset(book["image"], height: 200),
//             const SizedBox(height: 20),
//             Text(book["title"],
//                 style: const TextStyle(
//                     fontSize: 22, fontWeight: FontWeight.bold)),
//             Text(book["author"],
//                 style: const TextStyle(fontSize: 16, color: Colors.grey)),
//             const SizedBox(height: 10),
//             Text("Listeners: ${book["listeners"]}"),
//             const SizedBox(height: 10),
//             Text("Rating: ${book["rating"]} / 5"),
//             const SizedBox(height: 20),
//             const Text(
//               "This is where the book description will go...",
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:book_app/config/images.dart';
import 'package:book_app/pages/home/newly_added_books.dart';
import 'package:book_app/pages/tabs/art.dart';
import 'package:book_app/pages/tabs/business.dart';
import 'package:book_app/pages/tabs/comedytab.dart';
import 'package:book_app/pages/tabs/dramatab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.nsoft,
                              height: 70,
                              width: 70,
                            ),
                            Image.asset(
                              AppImages.nsoftlogo,
                              height: 45,
                              width: 95,
                            ),
                          ],
                        ),
                        Image.asset(
                          AppImages.setting,
                          height: 24,
                          width: 24,
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Kitoblar yoki mualliflarni qidirish...",
                          filled: true,
                          fillColor: Color(0xffF5F5FA),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  dividerColor: Colors.transparent,
                    controller: tabController,
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xff4838D1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    tabs: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Tab(text: "San'at")),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Tab(text: "Biznes"),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Tab(text: "Komediya")),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Tab(text: "Drama"),
                      ),
                    ]),
              ),
              SizedBox(
                  height: 460,
                  child: TabBarView(controller: tabController, children: [
                    ArtBooksTab(),
                    BusinessTab(),
                    ComedyTab(),
                    DramaTab(),
                  ])),
              NewlyAddedBooks()
            ],
          ),
        ),
      ),
    );
  }
}

// child: Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
//   child: Row(
//     children: [
//       ClipRRect(
//         borderRadius: BorderRadius.circular(12),
//         child: Image.asset(
//           book["image"],
//           width: 73,
//           height: 110,
//           fit: BoxFit.cover,
//         ),
//       ),
//       const SizedBox(width: 12),
//       Expanded(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               book["title"],
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 4),
//             Text(
//               book["author"],
//               style: const TextStyle(
//                 fontSize: 14,
//                 color: Color(0xff4838D1),
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: [
//                 Icon(Icons.menu_book_outlined,
//                     color: Color(0xff4838D1), size: 18),
//                 const SizedBox(width: 8),
//                 Image.asset(AppImages.vector, width: 30, height: 20),
//                 const SizedBox(width: 8),
//                 Image.asset(AppImages.headphones, width: 30, height: 20),
//               ],
//             ),
//           ],
//         ),
//       )
//     ],
//   ),
// ),

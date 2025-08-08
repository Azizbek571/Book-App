import 'package:book_app/config/images.dart';
import 'package:book_app/config/section_header.dart';
import 'package:book_app/pages/main_bottom/home/just_homelist.dart';
import 'package:book_app/pages/main_bottom/home/newly_added_books.dart';
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
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.nsoft,
                              height: 50,
                              width: 50,
                            ),
                            Image.asset(
                              AppImages.nsoftlogo,
                              height: 59,
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
                    SizedBox(height: 15),
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
                    indicatorPadding: EdgeInsets.symmetric(vertical: 6),
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
                  height: screenHeight * 0.54,
                  child: TabBarView(controller: tabController, children: [
                    ArtBooksTab(),
                    BusinessTab(),
                    ComedyTab(),
                    DramaTab(),
                  ])),
              NewlyAddedBooks(),
              SectionHeader(
  title: "Eng so'ngi qidiruv",
  onTap: () {
   
  },
),

              JustHomelist()
            ],
          ),
        ),
      ),
    );
  }
}



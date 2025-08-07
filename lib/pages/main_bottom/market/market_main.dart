import 'package:book_app/config/images.dart';
import 'package:book_app/config/recommended_books.dart';
import 'package:book_app/pages/main_bottom/home/just_homelist.dart';
import 'package:book_app/pages/main_bottom/market/business.dart';
import 'package:book_app/pages/main_bottom/market/music.dart';
import 'package:book_app/pages/main_bottom/market/personal.dart';
import 'package:book_app/pages/main_bottom/market/photo.dart';

import 'package:flutter/material.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 8),
                    Text(
                      "Qidiruv",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 6),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Kitoblar yoki mualliflarni qidirish...",
                          filled: true,
                          fillColor: Color(0xffF5F5FA),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Tavsiya etilgan toifalar",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                 
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> MusicPage()));
                              },
                              child: RecommendedBooks(
                                  imagePath: AppImages.play,
                                  label: "Musiqa",
                                  width: screenWidth * 0.4),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> PhotoPage()));
                                
                              },
                              child: RecommendedBooks(
                                  imagePath: AppImages.Camera,
                                  label: "Fotosuratlar",
                                  width: screenWidth * 0.4),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> Business()));
                                
                              },
                              child: RecommendedBooks(
                                  imagePath: AppImages.Camera,
                                  label: "Biznes",
                                  width: screenWidth * 0.4),
                            ),
                            SizedBox(width: 15),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> PersonalPage()));
                                
                              },
                              child: RecommendedBooks(
                                  imagePath: AppImages.Camera,
                                  label: "Shaxsiy",
                                  width: screenWidth * 0.4),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              JustHomelist()
            ],
          ),
        ),
      ),
    );
  }
}

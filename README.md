# book_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

00xff



import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3)
            ),
            height: 60,
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              controller: tabController,
                tabs: [
              Text("Elktron pochta"),
              Text("Telefon raqam "),
            ]),
          ),
          Expanded(child: TabBarView(
            controller: tabController,
              children: [
            Container(color: Colors.red,),
            Container(color: Colors.blueAccent,)
          ]))
        ],
      ),
    );
  }
}
#   B o o k - A p p  
 
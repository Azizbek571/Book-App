import 'package:book_app/config/images.dart';
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
//   late TabController _categoryTabController;
//   @override
//   void initState() {
//     _categoryTabController = TabController(length: 4, vsync: this);
//     super.initState();
//   }
// @override
//   void dispose() {
//     _categoryTabController.dispose();
//     super.dispose();
//   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
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
              child: Container(
                child: TabBar(
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

                    // indicatorPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    tabs: [
                      // Container(
                      //   padding: EdgeInsets.symmetric(horizontal: 15, ),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(6),
                      //     color: Color(0xff4838D1)
                      //     ),
                      //   child: Tab(text: "San'at")),
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
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: [
             ArtBooksTab(),
             BusinesTab(),
             ComedyTab(),
             DramaTab()]))],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   List<Tab> tabs = [
//     Tab(text: "San'at"),
//     Tab(text: "Drama"),
//     Tab(text: "Biznes")
//   ];
//   void addTab() {
//     setState(() {
//       tabs.add(Tab(icon: Icon(Icons.directions_bike)));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {

//     return DefaultTabController(
//       length: tabs.length,
//       child: Scaffold(
//         appBar: AppBar(),
//         body: 
         
        
//         TabBarView(children: tabs),
//         floatingActionButton: FloatingActionButton(
//           onPressed: addTab,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

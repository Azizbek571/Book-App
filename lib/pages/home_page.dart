import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Tab> tabs = [
    Tab(text: "San'at"),
    Tab(text: "Drama"),
    Tab(text: "Biznes")
  ];
  void addTab() {
    setState(() {
      tabs.add(Tab(icon: Icon(Icons.directions_bike)));
    });
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(),
        body: 
         
        
        TabBarView(children: tabs),
        floatingActionButton: FloatingActionButton(
          onPressed: addTab,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

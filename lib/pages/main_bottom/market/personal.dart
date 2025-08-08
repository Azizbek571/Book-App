import 'package:book_app/pages/main_bottom/home/just_homelist.dart';
import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor, 
        title: Text("Shaxsiy"),
        elevation: 3,
  shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: SingleChildScrollView(
        child: JustHomelist(),
      ),
    );
  }
}

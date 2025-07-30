import 'package:book_app/config/images.dart';
import 'package:book_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
    List<String> pin = [];

  void addDigit(String digit) {
    if (pin.length < 6) {
      setState(() {
        pin.add(digit);
      });
    }
  }

  void deleteDigit() {
    if (pin.isNotEmpty) {
      setState(() {
        pin.removeLast();
      });
    }
  }



  @override
  Widget build(BuildContext context) {


    return 

    SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  AppImages.logo,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 65),
              Text(
                textAlign: TextAlign.start,
                "Sahhof kirish kodingizni kiriting",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 50),
             
              TextField( 
                      keyboardType: TextInputType.number,
                 
                 decoration: InputDecoration( 
                  hintText: "Tasdiqlash kodi",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide.none 

                  )
                  
                 ),
              ),
              SizedBox(height: 16),
           
             
                  
                  


            ],
          ),
        ),
      ),
    );
  }
}






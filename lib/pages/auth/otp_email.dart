import 'package:book_app/config/images.dart';

import 'package:book_app/pages/auth/password.dart';
import 'package:book_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});
  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
                  height: 135,
                  width: 135,
                ),
              ),
              SizedBox(height: 24),
              Text(
                textAlign: TextAlign.start,
                "Tasdiqlash kodi",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 12),
              Text(
                  textAlign: TextAlign.start,
                  "azizbek@gmail.com manziliga yuborilgan tasdiqlash kodini kiriting",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              SizedBox(height: 24),
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
              Text.rich(TextSpan(children:[ 
                TextSpan(text: "Tasdiqlash kodi  ", style: TextStyle(color: Color(0xff2E2E5D), fontSize: 15)),

                TextSpan(text: "  Qayta yuborish", style: TextStyle(color: Color(0xffF77A55), fontSize: 15)),
                
              ] )),
              
              SizedBox(height: 16),
                  
                    InkWell (
                      onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (_) => PinCodeScreen()));
                      },
                      child: Container(
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff4838D1)),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Yuborish",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
              SizedBox(height: 16),
                  
                    InkWell (
                      onTap: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomePage()));
                      },
                      child: Container(
                          height: 56,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xff4838D1))
                              ),
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              "Bekor qilish",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color:Color(0xff4838D1)),
                            ),
                          )),
                    ),


            ],
          ),
        ),
      ),
    );
  }
}

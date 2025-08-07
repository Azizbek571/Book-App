import 'package:book_app/config/images.dart';

import 'package:book_app/pages/auth/password.dart';
import 'package:book_app/pages/main_bottom/home/home_page.dart';

import 'package:flutter/material.dart';

class OtpPhonePage extends StatefulWidget {
  const OtpPhonePage({super.key});
  @override
  State<OtpPhonePage> createState() => _OtpPhoneState();
}

class _OtpPhoneState extends State<OtpPhonePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  "+998906152525 manziliga yuborilgan tasdiqlash kodini kiriting",
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

















// import 'package:flutter/material.dart';

// class PinCodePage extends StatefulWidget {
//   const PinCodePage({super.key});

//   @override
//   State<PinCodePage> createState() => _PinCodePageState();
// }

// class _PinCodePageState extends State<PinCodePage> {
//   List<String> pin = [];

//   void addDigit(String digit) {
//     if (pin.length < 6) {
//       setState(() {
//         pin.add(digit);
//       });
//     }
//   }

//   void deleteDigit() {
//     if (pin.isNotEmpty) {
//       setState(() {
//         pin.removeLast();
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             const SizedBox(height: 40),
//             const Text(
//               "Sahhof kirish kodingozni kiriting",
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 30),

//             // PIN Boxes
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(6, (index) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 6),
//                   width: 40,
//                   height: 50,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       color: Colors.blue,
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: Text(
//                     index < pin.length ? pin[index] : '',
//                     style: const TextStyle(fontSize: 24),
//                   ),
//                 );
//               }),
//             ),

//             const SizedBox(height: 40),

//             // Number Pad
//             buildNumberPad(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildNumberPad() {
//     List<List<String>> keys = [
//       ['1', '2', '3'],
//       ['4', '5', '6'],
//       ['7', '8', '9'],
//       ['face', '0', 'del'],
//     ];

//     return Column(
//       children: keys.map((row) {
//         return Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: row.map((key) {
//             return Padding(
//               padding: const EdgeInsets.all(10),
//               child: GestureDetector(
//                 onTap: () {
//                   if (key == 'del') {
//                     deleteDigit();
//                   } else if (key != 'face') {
//                     addDigit(key);
//                   }
//                 },
//                 child: Container(
//                   width: 70,
//                   height: 70,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[200],
//                     borderRadius: BorderRadius.circular(35),
//                   ),
//                   child: key == 'del'
//                       ? const Icon(Icons.backspace_outlined)
//                       : key == 'face'
//                           ? const Icon(Icons.face_retouching_natural_outlined)
//                           : Text(
//                               key,
//                               style: const TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                 ),
//               ),
//             );
//           }).toList(),
//         );
//       }).toList(),
//     );
//   }
// }

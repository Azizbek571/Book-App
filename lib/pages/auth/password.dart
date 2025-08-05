// import 'package:book_app/config/images.dart';
// import 'package:book_app/pages/home_page.dart';
// import 'package:flutter/material.dart';

// class Password extends StatefulWidget {
//   const Password({super.key});

//   @override
//   State<Password> createState() => _PasswordState();
// }

// class _PasswordState extends State<Password> {
//     List<String> pin = [];

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

//     return

//     SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   AppImages.logo,
//                   height: 100,
//                   width: 100,
//                 ),
//               ),
//               SizedBox(height: 65),
//               Text(
//                 textAlign: TextAlign.start,
//                 "Sahhof kirish kodingizni kiriting",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
//               SizedBox(height: 50),

//               TextField(
//                       keyboardType: TextInputType.number,

//                  decoration: InputDecoration(
//                   hintText: "Tasdiqlash kodi",
//                   hintStyle: TextStyle(color: Colors.grey[500]),
//                   filled: true,
//                   fillColor: Colors.grey[200],
//                   border: OutlineInputBorder(borderSide: BorderSide.none),
//                   enabledBorder: OutlineInputBorder(borderSide: BorderSide.none

//                   )

//                  ),
//               ),
//               SizedBox(height: 16),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class PinCodeScreen extends StatefulWidget {
//   @override
//   _PinCodeScreenState createState() => _PinCodeScreenState();
// }

// class _PinCodeScreenState extends State<PinCodeScreen> {
//   String pin = "";

//   void _addDigit(String digit) {
//     if (pin.length < 4) {
//       setState(() {
//         pin += digit;
//       });
//     }
//   }

//   void _deleteDigit() {
//     if (pin.isNotEmpty) {
//       setState(() {
//         pin = pin.substring(0, pin.length - 1);
//       });
//     }
//   }

//   Widget _buildPinDots() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(4, (index) {
//         bool filled = index < pin.length;
//         return Container(
//           margin: EdgeInsets.symmetric(horizontal: 10),
//           width: 16,
//           height: 16,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: filled ? Colors.green : Colors.grey.shade300,
//           ),
//         );
//       }),
//     );
//   }

//   Widget _buildKeypadButton(String text, {VoidCallback? onTap}) {
//     return GestureDetector(
//       onTap: onTap ?? () => _addDigit(text),
//       child: Container(

//         margin: EdgeInsets.all(8),
//         decoration: BoxDecoration(
//           color: Color(0xffFFFFFF),
//           // border: Border.all(color: Colors.grey.shade400, width: 1.5),
//         borderRadius: BorderRadius.circular(12)
//         ),
//         alignment: Alignment.center,
//         child: Text(
//           text,
//           style: TextStyle(fontSize: 36,
//           color: Color(0xff000000),
//            fontWeight: FontWeight.w500),
//         ),
//       ),
//     );
//   }

//   Widget _buildKeypad() {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: 12,
//       gridDelegate:
//           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//       itemBuilder: (_, index) {
//         if (index < 9) {
//           return _buildKeypadButton('${index + 1}');
//         } else if (index == 9) {
//           return Center(child: Text(""));
//         } else if (index == 10) {
//           return _buildKeypadButton('0');
//         } else {
//           return IconButton(
//             icon: Icon(Icons.backspace),
//             onPressed: _deleteDigit,
//           );
//         }
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Введите PIN-код")),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 60),
//         child: Column(
//           children: [
//             Icon(Icons.lock, size: 60, color: Colors.green),
//             SizedBox(height: 20),
//             Text("Введите PIN-код", style: TextStyle(fontSize: 20)),
//             SizedBox(height: 10),
//             Text(
//               "+998 91 ••• •• 23",
//               style: TextStyle(color: Colors.grey),
//             ),
//             SizedBox(height: 40),
//             _buildPinDots(),
//             SizedBox(height: 40),
//             _buildKeypad(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:book_app/config/animated_snackbar.dart';
import 'package:book_app/config/images.dart';
import 'package:book_app/config/snackbar.dart';
import 'package:book_app/pages/home/home_page.dart';
import 'package:book_app/pages/main_page.dart';
import 'package:flutter/material.dart';

class PinCodeScreen extends StatefulWidget {
  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  String pin = "";



final String correctPin = "1234"; // Temporary password

void _checkPin() {
  if (pin == correctPin) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => MainPage()), // Replace with your home page
    );
  } else {
  //  showTopSnackBar(context, "Noto'g'ri parol");
  showAnimatedTopSnackbar(context, "Noto'g'ri parol");
    setState(() {
      pin = ""; 
    });
  }
}

void _addDigit(String digit) {
  if (pin.length < 4) {
    setState(() {
      pin += digit;
    });
    if (pin.length == 4) {
      Future.delayed(Duration(milliseconds: 200), _checkPin);
    }
  }
}









  // void _addDigit(String digit) {
  //   if (pin.length < 6) {
  //     setState(() {
  //       pin += digit;
  //     });
  //   }
  // }

  void _deleteDigit() {
    if (pin.isNotEmpty) {
      setState(() {
        pin = pin.substring(0, pin.length - 1);
      });
    }
  }

  Widget _buildPinDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        bool filled = index < pin.length;
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8),
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: filled ? Colors.green : Colors.grey.shade400,
          ),
        );
      }),
    );
  }

  Widget _buildKeyButton(Widget child, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8),
        width: 80,
        height: 69,
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            // color: Colors.red,

            borderRadius: BorderRadius.circular(15)),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }

  Widget _buildKeypad() {
    List<Widget> buttons = [
      for (int i = 1; i <= 9; i++)
        _buildKeyButton(
          Text('$i',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
          () => _addDigit('$i'),
        ),
      _buildKeyButton(
        // Image.asset('assets/images/pin.png', height: 100,width: 100),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.face_outlined,
              color: Colors.purple,
            )),

        () {},
      ),
      _buildKeyButton(
        Text('0', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        () => _addDigit('0'),
      ),
      _buildKeyButton(
        Icon(Icons.close, size: 36),
        _deleteDigit,
      ),
    ];

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      padding: EdgeInsets.all(0),
      children: buttons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 249, 249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 60),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff2E2E5D),
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 50),
                _buildPinDots(),
                SizedBox(height: 36),
                _buildKeypad(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

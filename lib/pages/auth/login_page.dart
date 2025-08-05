import 'package:book_app/config/images.dart';
import 'package:book_app/pages/auth/otp_email.dart';
import 'package:book_app/pages/auth/otp_phone.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  bool _obscureText = true;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(height: 24),
                Text("Sahhof",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
                SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                      textAlign: TextAlign.center,
                      "Ilovamiz bilan tanishish uchun hisob yarating yoki tizimga kiring",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1),
                  ),
                  height: 60,
                  child: TabBar(
                      dividerColor: Colors.transparent,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      indicatorSize: TabBarIndicatorSize.tab,
                      controller: tabController,
                      tabs: [
                        Text("Elktron pochta"),
                        Text("Telefon raqam "),
                      ]),
                ),
                SizedBox(height: 24),
                SizedBox(
                   height: MediaQuery.of(context).size.height * 0.7,
                    child: TabBarView(controller: tabController, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Elektron pochta",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C7278)),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "marina@gmail.com",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 236, 234, 234))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Parol",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C7278)),
                      ),
                      TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined)),
                            hintText: "Parolni kiriting",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 236, 234, 234))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  isChecked = newValue!;
                                });
                              }),
                          Text(
                            "Meni eslaysizmi?",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14),
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => OtpPage()));
            
                          //  Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                   builder: (_) => ContactAddScreen(
                          //                       contact:
                          //                           contact),
                        },
                        child: Container(
                            height: 56,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff1D61E7)),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Tizimga kirish",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text("Naqsh Soft"),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          )),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Telefon raqam",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C7278)),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "+998 00-000-00-00",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 236, 234, 234))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      SizedBox(height: 24),
            
            
                      InkWell (
                        onTap: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (_) => OtpPhonePage()));
                        },
                        child: Container(
                            height: 56,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff1D61E7)),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Tizimga kirish",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ),
            
            
                      SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text("Naqsh Soft"),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 1,
                          )),
                        ],
                      )
                    ],
                  ),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}










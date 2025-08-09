import 'package:book_app/config/images.dart';
import 'package:book_app/pages/comment_page.dart';
import 'package:book_app/pages/main_bottom/home/newly_added_books.dart';
import 'package:flutter/material.dart';

class BookDetailPage extends StatefulWidget {
  final Map<String, dynamic> book;

  const BookDetailPage({super.key, required this.book});

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(widget.book["title"]),
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: IconButton(
                onPressed: () {}, icon: Image.asset(AppImages.vector2)),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
            // color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.05),
            //     blurRadius: 5,
            //     offset: Offset(0, -2),
            //   )
            // ],
            ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedIndex == 0
                      ? const Color(0xff4838D1)
                      : Colors.transparent,
                  foregroundColor: selectedIndex == 0
                      ? Colors.white
                      : const Color(0xff4838D1),
                  side: const BorderSide(color: Color(0xff4838D1)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_outline_outlined,
                      color: selectedIndex == 0
                          ? Colors.white
                          : const Color(
                              0xff4838D1), // change color when not selected
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text("Audio"),
                  ],
                ),
              ),
            ),
            // Expanded(
            //   child: ElevatedButton.icon(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: selectedIndex == 0
            //           ? const Color(0xff4838D1)
            //           : Colors.transparent,

            //       side: const BorderSide(color: Color(0xff4838D1)),
            //       padding: const EdgeInsets.symmetric(vertical: 14),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       elevation: 0,
            //       surfaceTintColor: Colors.transparent
            //     ),
            //     onPressed: () {
            //       setState(() {
            //         selectedIndex = 0;
            //       });
            //     },
            //     icon: const Icon(
            //       Icons.play_circle_outline_outlined,
            //       color: Colors.white,
            //       size: 20,
            //     ),
            //     label:
            //         const Text("Audio", style: TextStyle(color: Colors.white)),
            //   ),
            // ),
            const SizedBox(width: 12),

            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: selectedIndex == 1
                      ? const Color(0xff4838D1)
                      : Colors.transparent,
                  foregroundColor: selectedIndex == 1
                      ? Colors.white
                      : const Color(0xff4838D1),
                  side: const BorderSide(color: Color(0xff4838D1)),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      color: selectedIndex == 0
                          ? const Color(0xff4838D1)
                          : Colors.white, 
                      size: 20,
                    ),
                    SizedBox(width: 5),
                    Text("Elektron"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    widget.book["image"],
                    height: 290,
                    width: 185,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.book["title"],
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.book["author"],
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Divider(thickness: 0.5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildStatItem(
                        icon: Icons.star,
                        iconColor: Colors.orange,
                        label: "Reyting",
                        value:
                            (widget.book["rating"] ?? 4.7).toStringAsFixed(1),
                      ),
                      _buildDivider(),
                      _buildStatItem(
                        label: "Davomiyligi",
                        value: widget.book["duration"] ?? "10:28:27",
                      ),
                      _buildDivider(),
                      _buildStatItem(
                        label: "Ovoz",
                        value: widget.book["voice"] ?? "Sayfullo Ikromov",
                        isBold: true,
                      ),
                      _buildDivider(),
                      _buildStatItem(
                        label: "Kategoriya",
                        value: widget.book["category"] ?? "San’at",
                        isBold: true,
                      ),
                      _buildDivider(),
                      _buildStatItem(
                        label: "Hozir o‘qimoqda",
                        value: widget.book["nowReading"] ?? "137 700",
                        isBold: true,
                      ),
                    ],
                  ),
                ),
                Divider(thickness: 0.5),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      Text(
                        "Kitob haqida",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text(
                    widget.book["details"],
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 86),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff4838D1))),
                      child: Text(
                        "Kitobni narxi  ${widget.book["price"]} UZS",
                        style: TextStyle(color: Color(0xff4838D1)),
                      )),
                ),


                CommentPage(),

                      GestureDetector(
                  onTap: () {},
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff4838D1))),
                      child: Text(
                        "Kitob haqida izoh qoldirish",
                        style: TextStyle(color: Color(0xff4838D1)),
                      )),
                ),

              NewlyAddedBooks(),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem({
    IconData? icon,
    Color? iconColor,
    required String label,
    required String value,
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: TextStyle(color: Color(0xff9292A2), fontSize: 15),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              if (icon != null)
                Icon(icon, size: 24, color: iconColor ?? Colors.black),
              if (icon != null) const SizedBox(width: 4),
              Text(
                value,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 50,
      width: 1,
      color: Colors.grey[300],
    );
  }
}

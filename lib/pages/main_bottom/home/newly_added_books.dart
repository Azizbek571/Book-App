
import 'package:book_app/config/newly_added_bookitem.dart';
import 'package:flutter/material.dart';

class NewlyAddedBooks extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Displacement",
      "author": "Kiku Hughes",
      "image": "assets/images/muqaddima.png",
      "listeners": "2.000+ Tinglovchilar",
      "rating": 4,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Renaissance Art",
      "author": "Leonardo da Vinci",
      "image": "assets/images/hukmdor.png",
      "listeners": "5.000+ Tinglovchilar",
      "rating": 5,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
    {
      "title": "Surrealism Explained",
      "author": "Salvador Dalí",
      "image": "assets/images/hukmdor.png",
      "listeners": "1.000+ Tinglovchilar",
      "rating": 2,
      "details": "On the Day of the Dead, La Muerte, ruler of the Land of the Remembered, and Xibalba, ruler of the Land of the Forgotten, see young boys Manolo Sánchez and Joaquín Mondragon competing for the love of their mutual crush María Posada. The gods strike a wager: if María marries Manolo, Xibalba will no longer interfere in mortal affairs, but if she marries Joaquín, La Muerte and Xibalba will swap realms. However, Xibalba cheats by giving Joaquín his Medal of Everlasting Life, which grants the wearer invincibility and “immeasurable courage”."
       ,"price": 35000

    },
  ];
  NewlyAddedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Yangi qo'shilgan kitoblar",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Row(
                children: [
                  Text("Batafsil",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8599FF))),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 12,
                    color: Color(0xff8599FF),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return NewlyAddedBookitem(book: books[index]);
                }

           
                ),
          ),
        ],
      ),
    );
  }
}

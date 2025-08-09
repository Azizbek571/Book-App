import 'package:flutter/material.dart';

class CommentPage extends StatelessWidget {
  final List<Map<String, dynamic>> reviews = [
    {
      'image': 'assets/images/man1.jpg', 
      'name': 'Ronald Richards',
      'rating': 4,
      'comment':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Great book! Really enjoyed the character development. It was okay, a bit slow in the middle. ',
          'date': ' 15.05.2024'
    },
    {
      'image': 'assets/images/man2.jpg',
      'name': 'Jane Doe',
      'rating': 5,
      'comment': 'Great book! Really enjoyed the character development.',
          'date': ' 10.05.2024'

    },
    {
      'image': 'assets/images/woman1.jpg',
      'name': 'John Smith',
      'rating': 3,
      'comment': 'It was okay, a bit slow in the middle.',
          'date': ' 13.02.2024'

    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Izohlar",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff2E2E5D))),
                  Text("Barcha izohlar (${reviews.length})", style: TextStyle(color: Color(0xff4838D1), fontWeight: FontWeight.w600, fontSize: 17),)
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                return Container(
                  width: 300,
                  height: 180,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(review['image'], height: 60,width: 45),
                         
                          SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  review['name'],
                                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(children: List.generate(review['rating'], (index)=> Icon(Icons.star, size: 16, color: Colors.orange,))
                                  
                                                            ,),
                                )
                         

                              ],
                            ),
                            
                          ),
                          Text(review['date'], style: TextStyle(color: Color(0xff9292A2), fontWeight: FontWeight.w400),)
                          
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        review['comment'],
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

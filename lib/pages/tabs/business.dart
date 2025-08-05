import 'package:flutter/material.dart';

class BusinesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          width: 200,
          margin: EdgeInsets.all(8),
          color: Colors.amber,
          child: Center(child: Text("Art Book $index")),
        );
      },
    );
  }
}

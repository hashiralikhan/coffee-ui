// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Coffeetile extends StatelessWidget {
  final String pageSource;
  final String coffeName;
  final String coffeSubtile;
  final String coffePrice;
  const Coffeetile({super.key,
 required this.pageSource,
  required this.coffeName,
  required this.coffeSubtile,
  required this.coffePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromARGB(255, 20, 16, 16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffe image
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(pageSource)),
            //coffe name
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeName,
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    coffeSubtile,
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ],
              ),
            ),
          // price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$'+ coffePrice),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Icons.add))
              ],
            ),
          )

          ],
        ),
      ),
    );
  }
}

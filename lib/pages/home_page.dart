// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coffeui/pages/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
           Padding(
             padding: EdgeInsets.only(right:20.0),
             child: Icon(Icons.person),
           )
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: '',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),
        label: '',
        ),
        
      ]),
      body: Column(
        children: [
          //Find best coffe for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Text("Find Best Coffee For you",
            style: GoogleFonts.bebasNeue(fontSize: 60),),
          ),
          const SizedBox(height: 10,),
          //Search bar

          const Padding(
            padding: EdgeInsets.symmetric(horizontal:25.0),
            child: TextField(decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: 'Find your coffee',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
            )
            ),
            
          
            ),
          ),
          const SizedBox(height: 10,),
          //horizontal view of coffee types

            Container(height: 40,
            color: Colors.red,),
          const SizedBox(height: 10,),

          //horizontal list view of coffee tiles
          
          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
             Coffeetile(pageSource: 'lib/images/cofee2.jpg', coffeName: 'Latte', coffeSubtile: 'With Aimond Milk', coffePrice: '5.00'),
             Coffeetile(pageSource: 'lib/images/hotcofee.jpg', coffeName: 'cardimum', coffeSubtile: 'With Suger and honey', coffePrice: '45.00'),
             Coffeetile(pageSource: 'lib/images/cofee2.jpg', coffeName: 'capachinoo', coffeSubtile: 'With Hot Milk', coffePrice: '50.00'),
              
            ],
          ))
        ],
      ),

    );
  }
}
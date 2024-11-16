import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(color: Color(0xFFF0F0F0)),
            padding: const EdgeInsets.all(15.0),
            margin: const EdgeInsets.all(15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(fontSize: 20)),
                Icon(
                  Icons.search,
                )
              ],
            )),
        const SizedBox(
          height: 8.0,
        ),
        Container(
          padding: const EdgeInsets.only(left: 14),
          child: const Row(
            children: [
              Icon(Icons.shopping_bag),
              Text("Shop Now",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
        ),
      ],
    );
  }
}

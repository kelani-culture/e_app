import 'package:ec_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  Function()? addToCart;
  ShoeTile({super.key, required this.shoe, required this.addToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 200,
      decoration: const BoxDecoration(color: Color(0xFFF0F0F0)),
      child: Column(
        children: [
          // image
          Column(
            children: [
              Image.asset(
                shoe.imagePath,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text(
                          "\$${shoe.price}",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20),
                        )),
                  ],
                ),
              ),
            ],
          ),
          // price desc
          // add to cart

          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        shoe.description,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[500],
                            fontFamily: "SourGummy"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontSize: 24, fontFamily: "SourGummy"),
                    ),
                    GestureDetector(
                      onTap: addToCart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12))),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

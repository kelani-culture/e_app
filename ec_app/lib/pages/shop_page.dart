import 'package:ec_app/models/cart.dart';
import 'package:ec_app/models/shoe.dart';
import 'package:ec_app/utils/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addItemToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addToCart(shoe);

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("A d i d",
                style: TextStyle(fontFamily: "SourGummy", color: Colors.black)),
            content: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(color: Color(0xFFF0F0F0)),
                height: 100,
                child: Text(
                  "${shoe.name} added to cart successfully",
                  style: TextStyle(fontSize: 22, color: Colors.grey[500]),
                )),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            // flex: 2,
            child: ListView.builder(
                itemCount: value.getAllShoes().length,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getAllShoes()[index];
                  return ShoeTile(
                    shoe: shoe,
                    addToCart: () => addItemToCart(shoe),
                  );
                }),
          )
        ],
      );
    });
  }
}

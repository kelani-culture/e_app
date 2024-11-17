import 'package:ec_app/models/cart.dart';
import 'package:ec_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartTile extends StatefulWidget {
  const CartTile({super.key});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {
  void deleteItem(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) {
      return Expanded(
          child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe shoe = value.getUserCart()[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: const Color(0xFFF0F0FF),
                    leading: Image.asset(shoe.imagePath),
                    title: Text(
                      shoe.name,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "SourGummy",
                          color: Colors.grey[700]),
                    ),
                    subtitle: Text(
                      "\$${shoe.price}",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: GestureDetector(
                      onTap: () => deleteItem(shoe),
                      child: Icon(
                        Icons.delete,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                );
              }));
    });
  }
}

import 'package:ec_app/pages/home_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void onPressed(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HomeScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "A d i d",
        style: TextStyle(
            color: Colors.white, fontFamily: "SourGummy", fontSize: 30),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          children: [
            Image.asset(
              "lib/images/adidas.png",
            ),
            Text(
              "all in or nothing",
              style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: "SourGrummy"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[900]),
                child: TextButton(
                    onPressed: () => onPressed(context),
                    child: const Center(
                        child: Text("Shop",
                            style: TextStyle(color: Colors.white)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}

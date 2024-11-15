import 'package:ec_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void goHome(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 10),
          child: Column(
            children: [
              DrawerHeader(
                  child: Image.asset(
                "lib/images/adid.png",
                color: Colors.white,
              )),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () => goHome(context),
                      child: const Text("Home",
                          style: TextStyle(color: Colors.white)))
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "About us",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("Home page"),
      ),
    );
  }
}

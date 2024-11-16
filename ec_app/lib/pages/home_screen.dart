import 'package:ec_app/pages/cart_page.dart';
import 'package:ec_app/pages/home_page.dart';
import 'package:ec_app/pages/profile_page.dart';
import 'package:ec_app/pages/shop_page.dart';
import 'package:ec_app/utils/nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void goHome(BuildContext context) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const HomePage();
    }));
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    const ProfilePage()
  ];

  int _selectedIndex = 0;

  void changeButtomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        changeNavBar: changeButtomNavBar,
      ),
    );
  }
}

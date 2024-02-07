//home_pg.dart file
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, sized_box_for_whitespace

import 'package:deja_brew/pages/offers_pg.dart';
import 'package:flutter/material.dart';
import 'package:deja_brew/pages/shop_pg.dart';
import 'package:deja_brew/pages/cart_pg.dart';
import 'package:deja_brew/pages/profile_pg.dart';

class HomePg extends StatefulWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPg(),
    OffersPg(),
    CartPg(),
    ProfilePg(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // No app bar shadow
        leading: Builder(
          builder: (context) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 66, 33, 21),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 66, 33, 21),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePg()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          if (_selectedIndex != 3)
            Container(
              color: Color.fromARGB(255, 255, 254, 254),
              padding: const EdgeInsets.all(1),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.brown),
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 66, 33, 21),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 75, 37, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 230, // Adjust height as needed
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/images/deja_logo.png',
                        fit: BoxFit.contain, // Adjust how the image fits
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Divider(
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/ShopPage');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.shopping_basket,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Shop',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 235, 233, 233),
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Color.fromARGB(255, 235, 233, 233)),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/SettingsPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*Green code 
//home_pg.dart file
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, sized_box_for_whitespace

import 'package:deja_brew/pages/offers_pg.dart';
import 'package:flutter/material.dart';
import 'package:deja_brew/pages/shop_pg.dart';
import 'package:deja_brew/pages/cart_pg.dart';
import 'package:deja_brew/pages/profile_pg.dart';

class HomePg extends StatefulWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  State<HomePg> createState() => _HomePgState();
}

class _HomePgState extends State<HomePg> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    ShopPg(),
    OffersPg(),
    CartPg(),
    ProfilePg(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, //no app bar shadow
        leading: Builder(
          builder: (context) {
            return Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Color.fromARGB(255, 38, 54, 34),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ],
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 38, 54, 34),
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePg()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          if (_selectedIndex != 3)
            Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(1),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search here...',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 140, 165, 134)),
                            borderRadius: BorderRadius.circular(20.0)),
                        contentPadding: const EdgeInsets.only(left: 12.0),
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 38, 54, 34),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 38, 54, 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 230, // Adjust height as needed
                    child: DrawerHeader(
                      padding: EdgeInsets.zero,
                      child: Image.asset(
                        'assets/images/deja_logo.png',
                        fit: BoxFit.contain, // Adjust how the image fits
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Divider(
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/ShopPage');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.shopping_basket,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Shop',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'Contact',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Color.fromARGB(255, 235, 233, 233),
                  ),
                  title: const Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 235, 233, 233),
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Color.fromARGB(255, 235, 233, 233)),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/SettingsPage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/
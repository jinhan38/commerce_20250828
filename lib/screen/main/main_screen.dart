import 'package:commerce_20250828/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    String appBarTitle = "";
    if (currentIndex == 0) {
      appBarTitle = "Commerce";
    } else if (currentIndex == 1) {
      appBarTitle = "Category";
    } else {
      appBarTitle = "Cart";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle, style: TextStyle(color: Colors.black)),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          HomeScreen(),
          Container(color: Colors.blue),
          Container(color: Colors.green),
        ],
      ),
      bottomNavigationBar: navigationBar(),
    );
  }

  BottomNavigationBar navigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined),
          label: "카테고리",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "장바구니"),
      ],
      currentIndex: currentIndex,
      onTap: (value) {
        currentIndex = value;
        setState(() {});
      },
    );
  }
}

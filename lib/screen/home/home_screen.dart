import 'package:commerce_20250828/asset_path.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    AssetPath.cloth1,
    AssetPath.cloth2,
    AssetPath.cloth3,
    AssetPath.cloth4,
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              children: [
                ...List.generate(imageList.length, (index) {
                  return Image.asset(imageList[index],fit: BoxFit.cover);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

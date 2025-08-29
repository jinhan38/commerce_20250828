import 'package:flutter/material.dart';

class HomeWidgets {
  static Widget shortcut({required List<String> iconList}) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(iconList.length, (index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                maximumSize: Size(70, 70),
                padding: EdgeInsets.all(16),
                elevation: 0,
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.purple,
              ),
              child: Image.asset(iconList[index], fit: BoxFit.cover),
            ),
          ],
        );
      }),
    );
  }

  static Widget subTitle(String title) {
    return Row(
      children: [
        SizedBox(width: 16),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  /// ListView.Builder 를 활용한 가로 스크롤 위젯 추가
  /// 데이터 모델 추가 ProductModel
  /// String image,
  /// String name
  /// int price
  /// int reviewCount
  /// double reviewRating,
  /// bool cart
}

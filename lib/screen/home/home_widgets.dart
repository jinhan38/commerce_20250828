import 'package:commerce_20250828/model/product_model.dart';
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

  static Widget productHorizontal(List<ProductModel> dataList) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          var productModel = dataList[index];
          return SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  productModel.image,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 4),
                Text(
                  productModel.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text("${productModel.price}원"),
                Text(
                  "${productModel.reviewRating}(${productModel.reviewCont})",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magazin/categorymodel.dart';

class CategoryItem extends StatelessWidget {
  CategoryModel item;
  CategoryItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              width: double.infinity,
              fit: BoxFit.cover,
              item.image,
              height: 231,
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 8, right: 8, left: 8),
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  color: Color(0xFF024383),
                  borderRadius: BorderRadius.circular(40)),
              child: Text(item.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}

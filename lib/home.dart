import 'package:flutter/material.dart';
import 'package:magazin/category.dart';
import 'package:magazin/categorymodel.dart';

class HomeScreen extends StatelessWidget {
  List<CategoryModel> categories = [
    CategoryModel(image: "assets/images/sharm.jpg", text: "Sharm Elshikh"),
    CategoryModel(image: "assets/images/alex.jpg", text: "Alexandria"),
    CategoryModel(image: "assets/images/dahab.jpg", text: "Dahab"),
    CategoryModel(image: "assets/images/marasy.jpg", text: "Marasy"),
    CategoryModel(image: "assets/images/nile.jpg", text: "Nile"),
    CategoryModel(image: "assets/images/aswan.jpg", text: "Aswan"),
    CategoryModel(image: "assets/images/ainsokhna.jpeg", text: "Ain Sokhna"),
    CategoryModel(image: "assets/images/hurghada.jpg", text: "Hurghada"),
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFF024383)),
                child: Text("Available Hotels",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 8,
            ),
            Expanded(
                child: GridView.builder(
                    itemBuilder: (context, index) {
                      return CategoryItem(item: categories[index]);
                    },
                    itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8)))
          ],
        ),
      ),
    ));
  }
}

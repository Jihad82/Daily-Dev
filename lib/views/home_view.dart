import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'actors_view.dart';
import 'products_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => ActorsView());
              },
              child: Text('ListView Data'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ProductsView());
              },
              child: Text('GridView Data'),
            ),
          ],
        ),
      ),
    );
  }
}

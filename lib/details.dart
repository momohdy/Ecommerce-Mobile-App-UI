// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final productDetails ;

  const ProductDetails({super.key, this.productDetails});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Colors.orange,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: ""),
          ]),
      endDrawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.shop_2_outlined),
            Text(
              " Mahdy ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Shop",
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
        iconTheme: IconThemeData(color: Colors.grey[400]),
        elevation: 0.0,
      ),
      body: Center(
        child: ListView(
          children: [
            Image.asset(widget.productDetails['image']),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                widget.productDetails["name"],
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                widget.productDetails["description"],
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[300]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "\$${widget.productDetails['salary']}",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[600]),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Color : ", style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(30)),
                ),
                Text(" Grey", style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)),
                ),
                Text(" Black", style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("Size :     39   40   41   42   43   44",
                  style: TextStyle(fontSize: 20))
            ]),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                child: MaterialButton(
                  padding: EdgeInsets.all(20),
                  onPressed: () {},
                  color: Colors.black,
                  child: Text("Add To Cart"),
                  textColor: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}

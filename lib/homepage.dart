// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items = [
    {"name": "Laptop", "icon": Icons.laptop},
    {"name": "Phone", "icon": Icons.phone},
    {"name": "Car", "icon": Icons.electric_car},
    {"name": "Bike", "icon": Icons.bike_scooter},
    {"name": "Mouse", "icon": Icons.mouse},
  ];
  List products = [
    {
      "name": "Adidas g 13",
      "description": "Lorem ipsum dolor",
      "salary": 29.99,
      "image": "assets/images/1.jfif"
    },
    {
      "name": "Airjordan ORG",
      "description": "Sit amet consectetur",
      "salary": 49.99,
      "image": "assets/images/2.jfif"
    },
    {
      "name": "Canon f15",
      "description": "Sit amet consectetur",
      "salary": 150.99,
      "image": "assets/images/3.jfif"
    },
    {
      "name": "Samsung g-15",
      "description": "Sit amet consectetur",
      "salary": 200.99,
      "image": "assets/images/4.jfif"
    },
  ];

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
      body: Container(
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                            hintText: "Search",
                            border: InputBorder.none,
                            fillColor: Colors.grey[180],
                            filled: true))),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Categories",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, i) => Column(
                  children: [
                    Container(
                      child: Icon(items[i]['icon']),
                      margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(70)),
                    ),
                    Text(
                      items[i]['name'],
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Best Selling",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.7,
                  crossAxisCount: 2),
              itemCount: products.length,
              itemBuilder: (context, i) => InkWell(
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductDetails(
                            productDetails: products[i],
                          )))
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Image.asset(
                          products[i]['image'],
                          height: 130,
                          fit: BoxFit.fill,
                        ),
                        alignment: Alignment.center,
                        color: Colors.grey[200],
                      ),
                      Text(
                        products[i]["name"],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        products[i]["description"],
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[300]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$${products[i]['salary']}",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

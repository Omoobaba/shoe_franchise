// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Utils/brands.dart';
import '../Utils/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('lib/profile/chizzy.jpg'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Good Morning',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Chidiebube Iroezindu',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          SizedBox(
            height: 25,
            width: 25,
            child: Image.asset(
              'lib/icons/heart.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset(
                'lib/icons/bell.png',
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // brand text
            Text(
              'Brand',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // brands
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Brands(
                    whichBrand: 'lib/brands/adidas-removebg-preview.png',
                    amountAvailable: '1010 Items',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Brands(
                      whichBrand: 'lib/brands/nike-removebg-preview.png.png',
                      amountAvailable: '740 Items'),
                  SizedBox(
                    width: 20,
                  ),
                  Brands(
                      whichBrand: 'lib/brands/under-armour-removebg-preview.png.png',
                      amountAvailable: '660 Items'),
                  SizedBox(
                    width: 20,
                  ),
                  Brands(
                      whichBrand: 'lib/brands/boss-removebg-preview.png.png',
                      amountAvailable: '830 Items'),
                  SizedBox(
                    width: 20,
                  ),
                  Brands(
                      whichBrand: 'lib/brands/jordan-removebg-preview.png.png',
                      amountAvailable: '555 Items'),
                ],
              ),
            ),

            // categories text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // products tab
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Categories(category: 'All',),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(category: 'Shoes',),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(category: 'Family',),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(category: 'Watches',),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(category: 'Fashion',),
                  SizedBox(
                    width: 20,
                  ),
                  Categories(category: 'Clothes',),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          

            SizedBox(height: 20,),

            // tab
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset(
                        'lib/icons/heart.png',
                        color: Colors.green,
                      ),
                    ),

                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset('lib/separated/green_nike-removebg-preview.png.png'),
                    ),

                    SizedBox(height: 30,),

                    Text(
                      'Nike Running 85',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),

                    SizedBox(height: 5,),
                    Text(
                      'Best Selling',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400],
                        fontSize: 15,
                      ),
                    ),

                    SizedBox(height: 5,),
                    Text(
                      '\$ 235.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(height: 5,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



import 'dart:ffi';

import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
  Recommended({super.key});

  final List<Map<String, Object>> recommendedList = [
    {
      'name': 'Burger King',
      'img': 'assets/images/recommended-2.png',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Burger King',
      'img': 'assets/images/recommended-1.png',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Burger King',
      'img': 'assets/images/recommended-2.png',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Burger King',
      'img': 'assets/images/recommended-1.png',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: Text(
            'Recommended',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: recommendedList.map((item) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
              child: Row(
                children: [
                  Image.asset(item['img'] as String),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '\$${item['price'] as double}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        // width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${item['prevPrice'] as double}',
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                '${item['discount']}%',
                                style: const TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            '${item['rating'] as double}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '(${item['reviews']})',
                            style: const TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

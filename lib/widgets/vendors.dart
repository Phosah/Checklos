import 'package:flutter/material.dart';

class Vendors extends StatelessWidget {
  Vendors({super.key});

  final List<Map<String, Object>> vendorsList = [
    {
      'name': 'Kentuchy Fried chicken',
      'img': 'assets/images/vendor-2.png',
      'subtitle': 'Fast food . Continental dishes . Drin...',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Kentuchy Fried chicken',
      'img': 'assets/images/vendor-1.png',
      'subtitle': 'Fast food . Continental dishes . Drin...',
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Kentuchy Fried chicken',
      'img': 'assets/images/vendor-2.png',
      'subtitle': 'Fast food . Continental dishes . Drin...',
      'price': 20.00,
      'rating': 4.7,
      'reviews': 320,
      'discount': -65,
      'prevPrice': 35.0,
    },
    {
      'name': 'Kentuchy Fried chicken',
      'img': 'assets/images/vendor-1.png',
      'subtitle': 'Fast food . Continental dishes . Drin...',
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
            'Top Vendors',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: vendorsList.map((item) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  item['img'] as String,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(item['name'] as String),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item['subtitle'] as String),
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
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        )
      ],
    );
  }
}

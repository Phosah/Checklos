import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Map<String, String>> foodType = [
    {
      'name': 'Fast Food',
      'img': 'assets/images/cat-1.png',
    },
    {
      'name': 'Breakfast',
      'img': 'assets/images/cat-2.png',
    },
    {
      'name': 'Chicken',
      'img': 'assets/images/cat-3.png',
    },
    {
      'name': 'Desserts',
      'img': 'assets/images/cat-4.png',
    },
  ];

  final List<Map<String, String>> randomCategories = [
    {'name': 'African', 'icon': 'assets/images/cat-icon-1.png'},
    {'name': 'Alcohol', 'icon': 'assets/images/cat-icon-2.png'},
    {'name': 'Local Market', 'icon': 'assets/images/cat-icon-3.png'},
    {'name': 'Gifts', 'icon': 'assets/images/cat-icon-4.png'},
    {'name': 'Groceries', 'icon': 'assets/images/cat-icon-5.png'},
    {'name': 'Bakery', 'icon': 'assets/images/cat-icon-1.png'},
  ];

  final listOfStrings = ['KFC', 'Stop n Chop', 'Tetrazzini'];

  String? dropdownValue = 'KFC';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
          child: Text(
            'Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 8.0,
          runSpacing: 6.0,
          children: randomCategories.map((item) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20),
                  right: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(item['icon'] as String),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(item['name'] as String),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: foodType.map((food) {
            return Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Image.asset(food['img'] as String),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  food['name'] as String,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
              ],
            );
          }).toList(),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          children: [
            Row(
              children: const [
                Icon(Icons.filter_list),
                SizedBox(
                  width: 5,
                ),
                Text('Filters:'),
              ],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  DropdownButton<String>(
                    value: dropdownValue,
                    items: listOfStrings
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

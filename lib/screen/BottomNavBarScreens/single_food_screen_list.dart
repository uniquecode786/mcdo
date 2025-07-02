import 'package:flutter/material.dart';
import 'package:mcdo/screen/BottomNavBarScreens/single_food_screen.dart';

import '../../wigets/addText.dart';


class SingleFoodScreenList extends StatefulWidget {
  const SingleFoodScreenList({super.key});

  @override
  State<SingleFoodScreenList> createState() => _SingleFoodScreenListState();
}

class _SingleFoodScreenListState extends State<SingleFoodScreenList> {
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Burger',
      'image':
      'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
    },
    {
      'name': 'Colddrink',
      'image':
      'https://cdn-icons-png.flaticon.com/512/883/883407.png',
    },
    {
      'name': 'Shape',
      'image':
      'https://cdn-icons-png.flaticon.com/512/3314/3314469.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AddText(text: 'Burger',
        fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body:     ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                item['image'],
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              item['name'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SingleFoodScreen()),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mcdo/screen/BottomNavBarScreens/single_food_screen_list.dart';


class FoodMainScreen extends StatefulWidget {
  const FoodMainScreen({super.key});

  @override
  State<FoodMainScreen> createState() => _FoodMainScreenState();
}

class _FoodMainScreenState extends State<FoodMainScreen> {
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
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/burger.png',
                height: 230,
                ),
                ListView.builder(
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
                          MaterialPageRoute(builder: (context) => const SingleFoodScreenList()),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          )
      ),
    );
  }
}

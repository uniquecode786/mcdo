import 'package:flutter/material.dart';
import 'package:mcdo/screen/BottomNavBarScreens/single_food_screen_list.dart';


class McDeliveryScreen extends StatefulWidget {
  const McDeliveryScreen({super.key});

  @override
  State<McDeliveryScreen> createState() => _McDeliveryScreenState();
}

class _McDeliveryScreenState extends State<McDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SingleFoodScreenList()),
                    );
                  },
                  child: Image.asset('assets/images/burger.png')),
            ],
          ),
        ),
      ),
    );
  }
}

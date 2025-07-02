import 'package:flutter/material.dart';

import '../../wigets/addText.dart';


class SingleFoodScreen extends StatefulWidget {
  const SingleFoodScreen({super.key});

  @override
  State<SingleFoodScreen> createState() => _SingleFoodScreenState();
}

class _SingleFoodScreenState extends State<SingleFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AddText(text: 'Burger',
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Image.asset('assets/images/burger.png'),
                const AddText(text: 'asdfghjkasdfghjkjhasdfghjkjhgfdsdfghjkjhgfdsdfghjkjhgfdsdfghjk',
                color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                )
              ],
            ),
          ) 
      ),
    );
  }
}

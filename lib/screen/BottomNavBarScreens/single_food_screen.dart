import 'package:flutter/material.dart';

import '../../wigets/addText.dart';


class SingleFoodScreen extends StatefulWidget {
  const SingleFoodScreen({super.key});
  static String route = '/SingleFoodScreen';
  @override
  State<SingleFoodScreen> createState() => _SingleFoodScreenState();
}

class _SingleFoodScreenState extends State<SingleFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.close, color: Colors.black),
              ),
            ),
          ),
          Positioned.fill(
            top: 120,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage("assets/icons/burger.png"),
                      height: 150,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Fillet Fish",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text("Red Hot Twister Sandwich + Rizo + Coleslaw + Drink",
                            style: TextStyle(color: Colors.grey)),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Text("470,000 LBP",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                              child: Row(
                                children: [
                                  const Icon(Icons.remove, color: Colors.grey),
                                  const Padding(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                    child: Text("1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 16)),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[700],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(Icons.add, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        buildSection("Choice of Fish", ["Fish Pc - Original", "Fish Pc - Spicy"], 0),
                        buildSection("Choice of Side Items", [
                          "Fries - Big Size (+LBP 50,000)",
                          "Coleslaw Salad Large",
                          "Fries"
                        ], 2),
                        buildSection("Choice of Beverages", [
                          "Pepsi 500ML",
                          "Mirinda 500ML",
                          "7UP 500ML",
                          "Diet Pepsi 500ML"
                        ], 0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSection(String title, List<String> options, int selectedIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        Text(title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        const Text("Choose 1", style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 8),
        ...List.generate(
          options.length,
              (index) => ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset("assets/images/fries.png", width: 32), // Placeholder icon
            title: Text(options[index]),
            trailing: Icon(
              selectedIndex == index ? Icons.radio_button_checked : Icons.radio_button_off,
              color: selectedIndex == index ? Colors.amber : Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
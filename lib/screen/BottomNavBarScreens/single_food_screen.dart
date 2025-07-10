import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mcdo/routers/routers.dart';

import '../../wigets/addText.dart';
import '../../wigets/custom_button.dart';
import 'basket_screen.dart';


class SingleFoodScreen extends StatefulWidget {
  const SingleFoodScreen({super.key});
  static String route = '/SingleFoodScreen';
  @override
  State<SingleFoodScreen> createState() => _SingleFoodScreenState();
}

class _SingleFoodScreenState extends State<SingleFoodScreen> {
  int _ticketCount = 1;

  void _toggleCounter() {
    setState(() {
      _ticketCount = 1;
    });
  }

  void _increment() {
    setState(() {
      _ticketCount++;
    });
  }

  void _decrement() {
    setState(() {
      if (_ticketCount > 1) {
        _ticketCount--;
      }
    });
  }

  int selectedIndex = 0;
  int selectedIndex1 = 0;
  int selectedIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFe3e3e3),
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFF333333)
                  )
                ),
                child: const Icon(Icons.close, color:Color(0xFF333333)),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child:
            Center(
            child: Image.asset("assets/icons/burger_single.png",
              height: 172,
            ),
          ),),
          Positioned.fill(
            top: 300,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    addHeight(30),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const AddText(
                            text: 'Fillet Fish',
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xFF333333),
                          ),
                          addHeight(10),
                          const AddText(
                            text: 'Red Hot Twister Sandwich + Rizo + Coleslaw + Drink',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF333333),
                          ),
                          addHeight(47),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const AddText(
                                text: '470,000 LBP',
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFF333333),
                              ),
                              GestureDetector(
                                onTap: _toggleCounter,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      InkWell(
                                        onTap: _decrement,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE1E1E1),
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            child: const Icon(Icons.remove, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      addWidth(4),
                                      Text(
                                        _ticketCount.toString(),
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                      addWidth(4),
                                      InkWell(
                                        onTap: _increment,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                                          child: Container(
                                            height: 32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFC732),
                                              borderRadius: BorderRadius.circular(2),
                                            ),
                                            child: const Icon(Icons.add, color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          addHeight(10),
                        ],
                      ),
                    ),
                    addHeight(20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      child:  buildSection(
                        title : "Choice of Fish",
                        options: ["Fish Pc - Original", "Fish Pc - Spicy"],
                        selectedIndex: selectedIndex,
                        onOptionSelected: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    ),
                    addHeight(20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      child:    buildSection(
                       title: "Choice of Side Items",
                       options:  [
                        "Fries - Big Size (+LBP 50,000)",
                        "Coleslaw Salad Large",
                        "Fries"
                      ],
                        selectedIndex: selectedIndex1,
                        onOptionSelected: (index) {
                          setState(() {
                            selectedIndex1 = index;
                          });
                        },
                      ),
                    ),
                    addHeight(20),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 8,
                            spreadRadius: 2,
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: buildSection(
                        title: "Choice of Beverages",
                        options:   [
                        "Pepsi 500ML",
                        "Mirinda 500ML",
                        "7UP 500ML",
                        "Diet Pepsi 500ML"],
                      selectedIndex: selectedIndex2,
                      onOptionSelected: (p0) {
                        setState(() {
                          selectedIndex2 = p0;
                        });
                      },
                      ),
                    ),
                    addHeight(80),
                    Center(
                      child: Image.asset('assets/icons/app_logos.png',
                        height: 40,
                        width: 110,
                      ),
                    ),
                    addHeight(120)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomSheet: CustomBottomBar(
        title: 'View Basket',
        price: 'LBP 6,520,000',
        onTap: () {
          Get.toNamed(BasketScreen.route);
        },
      ),
    );
  }
  Widget buildSection({
    required String title,
    required List<String> options,
    required int selectedIndex,
    required Function(int) onOptionSelected,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        AddText(
          text: title,
          color: const Color(0xFF333333),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        addHeight(9),
        const AddText(
          text: 'Choose 1',
          color: Color(0xFF333333),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        const SizedBox(height: 8),
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: options.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => onOptionSelected(index),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset("assets/icons/fries.png", width: 32), // Placeholder icon
                title: AddText(
                  text: options[index],
                  color: const Color(0xFF333333),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Icon(
                  selectedIndex == index
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: selectedIndex == index ? Colors.amber : Colors.grey,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(
            color: Color(0xFFEAEAEA),
            thickness: 1,
            height: 1,
          ),
        )
      ],
    );
  }

}
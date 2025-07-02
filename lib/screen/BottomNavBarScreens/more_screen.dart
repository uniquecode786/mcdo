import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../wigets/addText.dart';
import 'account_screen.dart';


class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     AddText(text: 'More',
                     fontWeight: FontWeight.w700,
                       fontSize: 34,
                       color: Colors.black,
                     ),
                   ],
                 ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'restaurant',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'my account',
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountScreen()),
                    );
                  },
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'terms & conditions',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'privacy polices',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'contact us',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'FAQ',
                  onTap: (){},
                ),
                IconTextArrowRow(
                 leadingIcon: 'assets/icons/home.png',
                  text: 'religion & language',
                  onTap: (){},
                ),
              ],
            ),
          )),
    );
  }
}


class IconTextArrowRow extends StatelessWidget {
  final String leadingIcon;
  final String text;
  final VoidCallback? onTap;

  const IconTextArrowRow({
    Key? key,
    required this.leadingIcon,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(leadingIcon, color: Colors.black,width: 20,
                    height: 20,),
                    const SizedBox(width: 10),
                    Text(
                      text,
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              ],
            ),
          ),
        ),
        const Divider(height: 1, thickness: 1),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../wigets/addText.dart';


class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});
  static String route = '/DeleteAccountScreen';
  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const AddText(
                    text: 'Delete Account',
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                const AddText(
                    text: 'Delete Account',
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                const AddText(
                    text: 'Delete Account',
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Go to 'My Account'",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}

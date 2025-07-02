import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../wigets/addText.dart';


class CommunicationSettingsScreen extends StatefulWidget {
  const CommunicationSettingsScreen({super.key});
  static String route = '/CommunicationSettingsScreen';
  @override
  State<CommunicationSettingsScreen> createState() => _CommunicationSettingsScreenState();
}

class _CommunicationSettingsScreenState extends State<CommunicationSettingsScreen> {
  bool switchValue = false;
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
                    text: 'Communication settings',
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  fontSize: 34,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                         child: AddText(
                           text: 'fgfjgfgjfdlgjfdlgjdflgjfdlgfdjglfdjgldfglfdgfljlfddfl',
                           color: Colors.black,
                           fontWeight: FontWeight.w400,
                           fontSize: 14,
                         ),
                     ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (bool value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                         child: AddText(
                           text: 'fgfjgfgjfdlgjfdlgjdflgjfdlgfdjglfdjgldfglfdgfljlfddfl',
                           color: Colors.black,
                           fontWeight: FontWeight.w400,
                           fontSize: 14,
                         ),
                     ),
                    CupertinoSwitch(
                      value: switchValue,
                      onChanged: (bool value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class SelfHelpScreen extends StatefulWidget {
  const SelfHelpScreen({super.key});

  @override
  State<SelfHelpScreen> createState() => _SelfHelpScreenState();
}

class _SelfHelpScreenState extends State<SelfHelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Self Help',
            style: maintextdark,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios))),
    );
  }
}

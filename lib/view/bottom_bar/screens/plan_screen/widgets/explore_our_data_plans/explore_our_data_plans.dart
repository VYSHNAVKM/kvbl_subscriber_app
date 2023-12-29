import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';

class ExploreOurDataPlans extends StatefulWidget {
  const ExploreOurDataPlans({super.key});

  @override
  State<ExploreOurDataPlans> createState() => _ExploreOurDataPlansState();
}

class _ExploreOurDataPlansState extends State<ExploreOurDataPlans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primarycolordark,
            )),
      ),
    );
  }
}

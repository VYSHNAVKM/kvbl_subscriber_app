import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

import 'package:kvbl_subscriber_app/view/bottom_bar/screens/plan_screen/widgets/myplan_moredetails.dart';

class MyPlanDetails extends StatefulWidget {
  const MyPlanDetails({super.key});

  @override
  State<MyPlanDetails> createState() => _MyPlanDetailsState();
}

class _MyPlanDetailsState extends State<MyPlanDetails> {
  final subtitlestyle =
      GoogleFonts.poppins(fontWeight: FontWeight.bold, color: primarycolordark);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: primarycolorlight, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'My Plan : ',
                style: subtextdark,
              ),
              Text(
                'LCO-CP-FUP20M1000G',
                style: subtitlestyle,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Plan Activated on : ',
                style: subtextdark,
              ),
              Text(
                '18 Dec 2023',
                style: subtitlestyle,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3, color: primarycolordark)),
                child: Column(
                  children: [
                    Text(
                      'Usage Data',
                      style: subtextdark,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '1000.0 GB',
                      style: subtitlestyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3, color: primarycolordark)),
                child: Column(
                  children: [
                    Text(
                      'MRP',
                      style: subtextdark,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '346.07',
                      style: subtitlestyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 3, color: primarycolordark)),
                child: Column(
                  children: [
                    Text(
                      'Validity',
                      style: subtextdark,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '30 Days',
                      style: subtitlestyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.blue.shade900)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPlanMoreDetails(),
                    ));
              },
              child: Text(
                'More Details',
                style: subtextlight,
              ))
        ],
      ),
    );
  }
}

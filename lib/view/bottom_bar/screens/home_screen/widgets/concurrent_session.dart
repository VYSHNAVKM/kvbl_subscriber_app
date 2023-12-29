import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class ConcurrentSession extends StatelessWidget {
  const ConcurrentSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: primarycolorlight, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green.shade500,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Concurrent Session',
                style: subtextdark,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Session Start Time : ',
                style: subtextdark,
              ),
              Text(
                '26/12/2023 9:09 AM',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: primarycolordark),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Duration : ',
                style: subtextdark,
              ),
              Text(
                '3 H : 30 M',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: primarycolordark),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Usage Data : ',
                style: subtextdark,
              ),
              Text(
                '1.33 GB',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold, color: primarycolordark),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

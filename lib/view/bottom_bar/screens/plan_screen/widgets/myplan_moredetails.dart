import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/myplan_details_list.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class MyPlanMoreDetails extends StatefulWidget {
  const MyPlanMoreDetails({super.key});

  @override
  State<MyPlanMoreDetails> createState() => _MyPlanMoreDetailsState();
}

class _MyPlanMoreDetailsState extends State<MyPlanMoreDetails> {
  final subtitlestyle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, color: primarycolordark, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycolorlight,
      appBar: AppBar(
          title: Text(
            'My Plan More Details',
            style: maintextdark,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios))),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  MyPlanDetailsList.myplandetailsTitle[index],
                  style: subtextdark,
                ),
                trailing: Text(
                  MyPlanDetailsList.myplandetailsSubtitle[index],
                  style: subtitlestyle,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  thickness: 3,
                  color: primarycolordark,
                ),
            itemCount: 11),
      ),
    );
  }
}

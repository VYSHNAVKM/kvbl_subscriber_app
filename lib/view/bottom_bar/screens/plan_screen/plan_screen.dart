import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/plan_screen/widgets/explore_our_data_plans/explore_our_data_plans.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/plan_screen/widgets/myplan/myplan_details%20.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            MyPlanDetails(),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: primarycolorlight,
                          border: Border.all(width: 3, color: primarycolordark),
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Column(children: [
                        Text(
                          'FUP30M3000G',
                          style: subtextdark,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          '30 Days',
                          style: subtextdark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '30 Mbps',
                          style: subtextdark,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '3072000 MB',
                          style: subtextdark,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.blue.shade900)),
                            onPressed: () {},
                            child: Text(
                              '₹ 470.82',
                              style: subtextlight,
                            ))
                      ]),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        width: 20,
                      ),
                  itemCount: 10),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExploreOurDataPlans(),
                          ));
                    },
                    child: Text(
                      'Explore Our Data Plans',
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade900),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

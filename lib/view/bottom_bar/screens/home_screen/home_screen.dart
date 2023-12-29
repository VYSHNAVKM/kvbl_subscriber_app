import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/home_screen/widgets/concurrent_session.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/home_screen/widgets/data_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  width: MediaQuery.of(context).size.width * 0.97,
                  decoration: BoxDecoration(
                      color: primarycolorlight,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: maintextdark,
                      ),
                      Text(
                        'VYSHNAV K M',
                        style: subtextdark,
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'LCO-CP-FUP20M1000G',
                        style: subtextdark,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '16 Jan 2024',
                        style: subtextdark,
                      ),
                      SizedBox(
                        height: 5,
                      ),
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
                            'Active',
                            style: subtextdark,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DataDetails(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(25),
              width: MediaQuery.of(context).size.width * 0.97,
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'No Transaction Done Yet',
                      style: subtextdark,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.blue.shade900)),
                        onPressed: () {},
                        child: Text(
                          'More History',
                          style: subtextlight,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ConcurrentSession()
          ],
        ),
      ),
    );
  }
}

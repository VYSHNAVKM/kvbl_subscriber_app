import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool privacy_Security = true;
  bool user_feedback = true;
  final listtilestyle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold, color: primarycolordark, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: primarycolordark,
                  radius: 70,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blue.shade900)),
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: subtextlight,
                    ))
              ],
            ),
            Text(
              'VYSHNAV K M',
              style: maintextdark,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.97,
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.handshake_outlined),
                    title: Text(
                      'BroadBand',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_pin_circle_outlined),
                    title: Text(
                      'CHANNEL VISION COMMUNICATION',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_4_outlined),
                    title: Text(
                      'H892774',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text(
                      '7902987407',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text(
                      'vyshnavkma06@gmail.com',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.broadcast_on_home_outlined),
                    title: Text(
                      '4caelcad9f07',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text(
                      'KARUVOTH MEETHAL',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_work_outlined),
                    title: Text(
                      'KOZHIKODE',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_work_outlined),
                    title: Text(
                      'KERALA',
                      style: listtilestyle,
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_work_outlined),
                    title: Text(
                      'INDIA',
                      style: listtilestyle,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Privacy & Security',
                  style: maintextdark,
                ),
                Switch(
                  value: privacy_Security,
                  activeColor: Colors.blue.shade900,
                  onChanged: (value) {
                    setState(() {
                      privacy_Security = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User Feedback',
                  style: maintextdark,
                ),
                Switch(
                  value: user_feedback,
                  activeColor: Colors.blue.shade900,
                  onChanged: (value) {
                    setState(() {
                      user_feedback = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

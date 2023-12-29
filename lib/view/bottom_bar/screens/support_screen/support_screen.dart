import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/support_screen/widgets/create_ticket/create_ticket_screen.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/support_screen/widgets/self_help/self_help_screen.dart';
import 'package:kvbl_subscriber_app/view/bottom_bar/screens/support_screen/widgets/ticket_history/ticket_history_screen.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final subtitlestyle =
      GoogleFonts.poppins(fontWeight: FontWeight.bold, color: primarycolordark);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TICKET',
              style: maintextdark,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 9.99,
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Colors.purple,
                      size: 50,
                    ),
                    Text(
                      'There are no ticket for you',
                      style: subtextdark,
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 9.99,
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.contact_support_outlined,
                      color: primarycolordark,
                    ),
                    title: Text(
                      'Self Help',
                      style: subtextdark,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelfHelpScreen(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: primarycolordark,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.contact_support_outlined,
                      color: primarycolordark,
                    ),
                    title: Text(
                      'Ticket History',
                      style: subtextdark,
                    ),
                    subtitle: Text(
                      'Display history of your tickets',
                      style: subtitlestyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TicketHistoryScreen(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: primarycolordark,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.contact_support_outlined,
                      color: primarycolordark,
                    ),
                    title: Text(
                      'Create Ticket',
                      style: subtextdark,
                    ),
                    subtitle: Text(
                      'Raise a ticket for make complaint',
                      style: subtitlestyle,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateTicketScreen(),
                              ));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: primarycolordark,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: primarycolorlight,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Any Query',
                      style: maintextdark,
                    ),
                  ),
                  Text(
                    'Level 1',
                    style: subtextdark,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.call,
                        color: primarycolordark,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '0000000000',
                        style: subtextdark,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Call Us',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 17),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.email,
                        color: primarycolordark,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'hi@gmail.com',
                        style: subtextdark,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Write to Us',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 17),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Level 2',
                    style: subtextdark,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.call,
                        color: primarycolordark,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '0000000000',
                        style: subtextdark,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Call Us',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 17),
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.email,
                        color: primarycolordark,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'hi@gmail.com',
                        style: subtextdark,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Write to Us',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                fontSize: 17),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

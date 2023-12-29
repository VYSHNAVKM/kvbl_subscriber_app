import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/utils/color_contant.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class DataDetails extends StatelessWidget {
  const DataDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * 0.97,
      decoration: BoxDecoration(
          color: primarycolorlight, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Used 8 Days Of 30 Days',
                style: subtextdark,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                height: 20,
                width: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your Plan will be expire in 22 Days',
                style: subtextdark,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue.shade900)),
                      onPressed: () {},
                      child: Text(
                        'More Details',
                        style: subtextlight,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue.shade900)),
                      onPressed: () {},
                      child: Text(
                        'Recharge',
                        style: subtextlight,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

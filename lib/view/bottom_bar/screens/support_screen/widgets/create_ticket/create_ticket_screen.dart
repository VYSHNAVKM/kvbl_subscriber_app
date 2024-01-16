import 'package:flutter/material.dart';
import 'package:kvbl_subscriber_app/utils/textstyle_contant.dart';

class CreateTicketScreen extends StatefulWidget {
  const CreateTicketScreen({super.key});

  @override
  State<CreateTicketScreen> createState() => _CreateTicketScreenState();
}

class _CreateTicketScreenState extends State<CreateTicketScreen> {
  // Initial Selected Value
  String dropdownvalue = 'None';

  // List of items in our dropdown menu
  var items = [
    'None',
    'Net Speed slow',
    'Account deactivate',
    'Delete my account',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Create Ticket',
            style: maintextdark,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.99,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  '7902987407',
                  style: maintextdark,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.99,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Case Reason *',
                      style: maintextdark,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Select Category',
                        style: maintextdark,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownButton(
                      value: dropdownvalue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: subtextdark,
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Remark',
                    hintStyle: subtextdark,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
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
                    'Save',
                    style: subtextlight,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:truckgo_project/core/core.dart';
import 'package:collection/collection.dart';

import 'package:truckgo_project/module/business_information/views/business_information_page1.dart';
import 'package:truckgo_project/module/personal_information/views/personal_information.dart';

List menu_deatils = [
  {"image": "assets/icons/setting.png", "text": "Setting", "id": "1"},
  {
    "image": "assets/icons/collection.png",
    "text": "Frequently Asked Questions",
    "id": "2"
  },
  {"image": "assets/icons/lock.png", "text": "Terms", "id": "3"},
  {"image": "assets/icons/Headset.png", "text": "Contact Support", "id": "4"},
  {"image": "assets/icons/logout.png", "text": "Log out", "id": "5"},
];

void _showAlertDialog(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text('Notice'),
      content: Text('Are you sure you want to log out?'),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No', style: TextStyle(color: Colors.black)),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Yes', style: TextStyle(color: Colors.blue)),
        ),
      ],
    ),
  );
}

class business_information extends StatefulWidget {
  const business_information({Key key}) : super(key: key);

  @override
  State<business_information> createState() => _business_informationState();
}

class _business_informationState extends State<business_information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Netural_5_Colour,
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    boxShadow: shadow_1,
                    // [
                    //   BoxShadow(
                    //       color: Colors.grey[200],
                    //       blurRadius: 10,
                    //       spreadRadius: 3)
                    // ],
                    borderRadius: BorderRadius.circular(15),
                    color: Netural_5_Colour),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: Netural_4_Colour,
                        radius: 35,
                        child: Center(
                          child: Image.asset(
                            "assets/icons/person.png",
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 3),
                            Text("Tony Puttichai",
                                style: titile1_style(color: Netural_1_Colour)),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Image.asset("assets/icons/smartphone.png",
                                    height: 16, width: 16),
                                SizedBox(width: 10),
                                Text("+0123 456 789",
                                    style: body3_style(color: Primary_color)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 400),
                  reverseDuration: Duration(milliseconds: 400),
                  type: PageTransitionType.rightToLeft,
                  isIos: true,
                  child: personal_information(),
                ),
              );
              // Navigator.push<void>(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (BuildContext context) => personal_information(),
              //   ),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      boxShadow: shadow_1,
                      borderRadius: BorderRadius.circular(15),
                      color: Netural_5_Colour),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text("Personal information",
                              style: body1_style(color: Netural_1_Colour))),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Text("Your name, ID card, email, address",
                                  style: body2_style(color: Netural_3_Colour))),
                          Image.asset("assets/icons/Right_arrow.png",
                              height: 16, width: 16),
                        ],
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 400),
                  reverseDuration: Duration(milliseconds: 400),
                  type: PageTransitionType.rightToLeft,
                  isIos: true,
                  child: business_information_page1(),
                ),
              );
              // Navigator.push<void>(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (BuildContext context) =>
              //         business_information_page1(),
              //   ),
              // );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                  padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      boxShadow: shadow_1,
                      borderRadius: BorderRadius.circular(15),
                      color: Netural_5_Colour),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text("Business information",
                              style: body1_style(color: Netural_1_Colour))),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Text("Company's name, address",
                                  style: body2_style(color: Netural_3_Colour))),
                          Image.asset("assets/icons/Right_arrow.png",
                              height: 16, width: 16),
                        ],
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    boxShadow: shadow_1,
                    borderRadius: BorderRadius.circular(15),
                    color: Netural_5_Colour),
                child: Column(
                    children: menu_deatils
                        .mapIndexed(
                          (index, element) => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    dynamic id = element['id'];
                                    print(id);

                                    if (id == "5") {
                                      _showAlertDialog(context);
                                    }
                                    // Navigator.push<void>(
                                    //   context,
                                    //   MaterialPageRoute<void>(
                                    //     builder: (BuildContext context) =>
                                    //         personal_information(),
                                    //   ),
                                    // );
                                  },
                                  child: Row(
                                    children: [
                                      Image.asset(element['image'].toString(),
                                          height: 18, width: 18),
                                      SizedBox(width: 10),
                                      Expanded(
                                          flex: 4,
                                          child: Text(
                                              element['text'].toString(),
                                              style: body2_style(
                                                  color: Netural_1_Colour))),
                                      Image.asset(
                                          "assets/icons/Right_arrow.png",
                                          height: 16,
                                          width: 16),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8),
                                Divider(
                                  color: Netural_3_Colour,
                                ),
                                SizedBox(height: 8),
                              ]),
                        )
                        .toList())),
          ),
          SizedBox(height: 20)
        ]),
      ),
    );
  }
}

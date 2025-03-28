import 'dart:ui';

import 'package:truckgo_project/module/module.dart';

import '../../../core/core.dart';

class driver_information extends StatefulWidget {

  @override
  State<driver_information> createState() => _driver_informationState();
}

class _driver_informationState extends State<driver_information> {
  bool show_more = false;
  List image_truck_array = [
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Hunter truck",
      "truck_desc": "this is a hunter truck"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Hunter truck",
      "truck_desc": "this is a hunter truck"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Hunter truck",
      "truck_desc": "this is a hunter truck"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Hunter truck",
      "truck_desc": "this is a hunter truck"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Hunter truck",
      "truck_desc": "this is a hunter truck"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Netural_5_Colour,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Appbar(
            leading_widget: Image(
              image: AssetImage('assets/Leftarrow.png'),
              height: 20,
              width: 20,
            ),
            action_ontap: () {
             Navigator.pop(context);
            },
           
            height: 60,
            leading_ontap: () {
               Navigator.pop(context);
              print("this is leading icon");
            },
            title: Variable.driver_info,
            text_align: TextAlign.center,
            text_style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            leading_action: true,
            decoration: BoxDecoration(
              color: Netural_5_Colour,
             
            ),
          ),
         
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 15, 22, 8),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Netural_5_Colour,
                      boxShadow: [
                        BoxShadow(
                          color: shadow_color,
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 18, 5, 18),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/tag.png",
                                  height: 20,
                                  width: 20,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Variable.order,
                                          style: doller_style,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/security_officer.png",
                                  height: 20,
                                  width: 20,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Variable.name,
                                          style: numberof_vehicle_style,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/side_truck.png",
                                  height: 20,
                                  width: 20,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Variable.trucks_with_awning,
                                          style: numberof_vehicle_style,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 8, right: 8, bottom: 7),
                            child: ElevatedButton(
                                onPressed: () async {
                                  await FlutterPhoneDirectCaller.callNumber("1234567890");             
                                },
                                child: Container(
                                  height: 44,
                                  width: MediaQuery.of(context).size.width,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      Variable.call,
                                      style: submit_button_style,
                                    ),
                                  ),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Primary_color),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    )))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              duration: Duration(milliseconds: 400),
                              reverseDuration: Duration(milliseconds: 400),
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: order_map(),
                            ),
                          );
  //                       Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) =>  order_map()),
  // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: shadow_color,
                                blurRadius: 40,
                                spreadRadius: 0,
                                offset: Offset(0, 4),
                              ),
                  

                            ],
                            borderRadius: BorderRadius.circular(18),
                            color: Netural_5_Colour),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 12, 15, 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  Variable.order_heading,
                                  style: order_style,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
                                child: Container(
                                  height: 42,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Netural_4_Colour),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(16, 0, 16, 0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            // color: Colors.red,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3.0),
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  Variable.los_angeles,
                                                  style: bottomsheet_content,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            // color: Colors.yellow,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 3.0),
                                              child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Image.asset(
                                                  "assets/arrow_right.png",
                                                  height: 14,
                                                  width: 18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            // color: Colors.green,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                Variable.las_vegas,
                                                style: bottomsheet_content,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/grey_calendar.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8.0, top: 4),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              "2020/03/30",
                                              style: order_style,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 2, 0, 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: Text(
                                            Variable.status,
                                            textAlign: TextAlign.left,
                                            style: status_style2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Variable.found_driver,
                                              style: dound_driver_style,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      show_more
                                          ? Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 12),
                                                child: Wrap(
                                                    alignment:
                                                        WrapAlignment.start,
                                                    children: image_truck_array
                                                        .mapIndexed(
                                                          (index, element) =>
                                                              Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    right: 12,
                                                                    bottom: 10),
                                                            child: Container(
                                                  height: 88,
                                                  width: 88,
                                                  alignment: Alignment.topRight,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              element["truck_image"]),
                                                          fit: BoxFit.cover),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18)),
                                                  child: Container(
                                                      height: 32,
                                                      width: 35,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topRight:
                                                                Radius.circular(
                                                                    18),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10),
                                                          ),
                                                          color: Sementic_1_Colour),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Image.asset(
                                                          "assets/delete.png",
                                                          height: 16,
                                                          width: 16,
                                                        ),
                                                      )))
                                                          ),
                                                        )
                                                        .toList()),
                                              ),
                                            )
                                          : SizedBox.shrink(),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            show_more =! show_more;
                                            // _showMyDialog();
                                          });
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              Variable.see_details,
                                              style: see_details_style,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Image.asset(
                                                 show_more
                                          ?"assets/uparrow.png"
                                                :"assets/downarrow.png",
                                                height: 16,
                                                width: 16,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        ]),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      barrierColor: Colors.black.withOpacity(0.7),

      builder: (BuildContext ctx) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              insetPadding: EdgeInsets.fromLTRB(24, 150, 24, 60),
              contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              content: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    CircleAvatar(
                      // backgroundColor: Colors.green,
                      radius: 46,
                      child: Container(
                        child: Center(
                          child: Image.asset(
                            "assets/profile_pic.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                        child: Text(
                          Variable.how_is_your_ship,
                          textAlign: TextAlign.center,
                          style: bottomsheet_title,
                        ),
                      ),
                    ),
                    
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: Image.asset(
                              'assets/blue_pointer.png',
                              height: 16,
                              width: 16,
                            ),
                          ),
                          
                            Text(
                              Variable.location_alert_subtitle,
                              textAlign: TextAlign.left,
                              style: status_style2,
                            ),
                        ],
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Accent_color,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ));
      },
    );
  }
}

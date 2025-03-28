// ignore_for_file: prefer_const_constructors
import 'package:truckgo_project/core/utilities/widget_utilities/dotted_line.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';
import 'package:truckgo_project/module/dashboard/views/main_dashboard.dart';
import '../../../core/core.dart';

class home_card_widgets extends StatefulWidget {
  const home_card_widgets({Key key}) : super(key: key);

  @override
  State<home_card_widgets> createState() => _home_card_widgetsState();
}

class _home_card_widgetsState extends State<home_card_widgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              // color: Colors.black.withOpacity(0.05),
    color: Color(0x0D000000),
              blurRadius: 40,
              spreadRadius: 0,
              offset: Offset(0, 4),
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(left: 15, top: 15, right: 15),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Netural_5_Colour,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20))),
                      child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.scaleDown,
                        child: Text(
                          Variable.Application,
                          style: Application_style,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(left: 15, top: 0, right: 15),
                        height: 50,
                        decoration: BoxDecoration(
                            color: tabbarview_value == 1
                                ? Primary_color
                                : Sementic_1_Colour,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(Variable.Cancelled,
                                      style: Cancelled_style)),
                              Image.asset(
                                AppIconImages.Arrow_up,
                                color: Netural_5_Colour,
                                height: 13,
                                width: 13,
                              )
                            ])),
                  )
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.grey[200],
                  ),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.scaleDown,
                          child: Text(Variable.LosAngeles,
                              style: LosAngeles_style),
                        ),
                        Image.asset(
                          AppIconImages.Arrow_right,
                          color: Netural_1_Colour,
                          height: 18,
                          width: 18,
                        ),
                        FittedBox(
                          alignment: Alignment.centerLeft,
                          fit: BoxFit.scaleDown,
                          child:
                              Text(Variable.Lasvegas, style: LosAngeles_style),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Image.asset(
                            AppIconImages.Calendar_date,
                            // 'assets/icons/Calendar_date.png',
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text("2020/03/20 - 99:00",
                                        style: date_style),
                                  )))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppIconImages.blue_apple,
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Text(Variable.vegetable,
                                      style: date_style)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Image.asset(
                            AppIconImages.truck,
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                    child: Text("Trucks with awnings",
                                        style: date_style),
                                  )))
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            AppIconImages.meter,
                            height: 18,
                            width: 18,
                          ),
                          SizedBox(width: 15),
                          Expanded(
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  alignment: Alignment.centerLeft,
                                  child:
                                      Text(Variable.tons, style: date_style)))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: MySeparator(
                  color: Netural_3_Colour,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Text(
                        "Trip price",
                        style: TextStyle(
                            color: Netural_2_Colour,
                            fontFamily: "Avenir_Heavy",
                            fontSize: 14),
                      )),
                  Text(
                    "\$254.08",
                    style: TextStyle(
                        fontFamily: "Avenir_Heavy",
                        color: Netural_1_Colour,
                        fontSize: 20),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Netural_4_Colour,
                            spreadRadius: 5)
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Netural_5_Colour,
                      radius: 15,
                      child: Image.asset(
                        AppIconImages.Arrow_right,
                        color: Primary_color,
                        // 'assets/icons/Arrow_right.png',
                        height: 13,
                        width: 13,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: MySeparator(
                  color: Netural_3_Colour,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Row(children: [
                  Expanded(
                      flex: 3,
                      child: Text(
                        "Reset order",
                        style: Reset_style,
                      )),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            color: Netural_4_Colour,
                            spreadRadius: 5)
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Netural_5_Colour,
                      radius: 15,
                      child: Image.asset(
                        AppIconImages.Arrow_right,
                        color: Primary_color,
                        // 'assets/icons/Arrow_right.png',
                        height: 13,
                        width: 13,
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 20),
            ],
          )),
    );
  }
}

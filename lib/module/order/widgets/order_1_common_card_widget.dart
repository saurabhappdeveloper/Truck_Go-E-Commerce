// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class Order1commoncardWidget extends StatefulWidget {
  final String status_text;
  final TextStyle status_text_style;
  final bool issecondaddress;
  Order1commoncardWidget(
      {Key key,
      this.status_text,
      this.status_text_style,
      this.issecondaddress = false})
      : super(key: key);

  @override
  State<Order1commoncardWidget> createState() => _Order1commoncardWidgetState();
}

class _Order1commoncardWidgetState extends State<Order1commoncardWidget> {
  bool is_show = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: InkWell(
            onTap: () {
              if (widget.status_text.toString() == Variable.cancel.toString()) {
                showDialog(
                  barrierColor: Color.fromRGBO(0, 0, 0, 0.7),
                  context: context,
                  builder: (BuildContext context) {
                    return Notification_widget();
                  },
                );
              }
            },
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: shadow_1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      Variable.status,
                      style: body4_style(color: Netural_2_Colour),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      widget.status_text,
                      style: widget.status_text_style,

                      // Variable.cancel,
                      // style: cancel_style,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        ///
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  duration: Duration(milliseconds: 400),
                  reverseDuration: Duration(milliseconds: 400),
                  type: PageTransitionType.rightToLeft,
                  isIos: true,
                  child: Code_order1_view(),
                ),
              );
              // Get.toNamed(RoutesApp.codeorder1view);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: shadow_1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: [
                        Text(
                          Variable.addressoforder,
                          style: body4_style(color: Netural_2_Colour),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Image.asset(
                                  'assets/yellow_pointer.png',
                                  height: 18,
                                  width: 18,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          // Expanded(
                          //   child:
                          Text(Variable.LosAngelesCaniforniaUSA,
                              style: body1_style(color: Netural_1_Colour)),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 9, right: 9),
                            child: CustomPaint(
                                painter: DashedLineVerticalPainter(
                                    color: Netural_3_Colour),
                                size: Size(1, double.infinity)),
                            // IntrinsicHeight(
                            //   child:
                            //       // CustomDottedLine(
                            //       //   height: 100, // Adjust the height as needed
                            //       //   color: Color(0xffCACACA), // Adjust the line color
                            //       // ),
                            //       Dash(
                            //           direction: Axis.vertical,
                            //           dashGap: 5,
                            //           length: 130,
                            //           // dashLength: 12,
                            //           dashColor:Netural_3_Colour),
                            // ),
                          ),

                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Image.asset(
                                        'assets/user.png',
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        Variable.PushPuttichaiPush,
                                        style: body4_style(
                                            color: Netural_1_Colour),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Image.asset(
                                        'assets/phone.png',
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        Variable.Phonenum,
                                        style: body4_style(
                                            color: Netural_1_Colour),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Image.asset(
                                        'assets/massege.png',
                                        height: 16,
                                        width: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                      child: Text(
                                        Variable.messagetext,
                                        style: body4_style(
                                            color: Netural_1_Colour),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Image.asset(
                                'assets/blue_pointer.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  Variable.LosAngelesCaniforniaUSA,
                                  style: body1_style(color: Netural_1_Colour),
                                ),
                              ),
                              widget.issecondaddress == false
                                  ? Container()
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              child: Image.asset(
                                                'assets/user.png',
                                                height: 16,
                                                width: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              child: Text(
                                                Variable.PushPuttichaiPush,
                                                style: body4_style(
                                                    color: Netural_1_Colour),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 3),
                                              child: Image.asset(
                                                'assets/phone.png',
                                                height: 16,
                                                width: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              child: Text(
                                                Variable.Phonenum,
                                                style: body4_style(
                                                    color: Netural_1_Colour),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 4),
                                              child: Image.asset(
                                                'assets/massege.png',
                                                height: 16,
                                                width: 16,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Expanded(
                                              child: Text(
                                                Variable.messagetext,
                                                style: body4_style(
                                                    color: Netural_1_Colour),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 20,
                                        // ),
                                      ],
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: shadow_1),
            child: Column(
              children: [
                SizedBox(
                  height: 3,
                ),
                Column(
                  children: order1card_list
                      .mapIndexed((index, e) => Order1cardwidget(
                            img: e.img,
                            title: e.title,
                            subtitle: e.subtitle,
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: shadow_1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: order2card_list
                      .mapIndexed((index, e) => Order2cardwidget(
                            title: e.title,
                            subtitle: e.subtitle,
                            onTap: () {
                              if (e.title.toString() ==
                                  Variable.Numberofvehicles.toString()) {
                                showModalBottomSheet(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                    context: context,
                                    isScrollControlled:
                                        true, // set this to true
                                    // Basit Basit
                                    builder: (_) {
                                      return DraggableScrollableSheet(
                                        maxChildSize: 1,
                                        minChildSize: 0.45,
                                        initialChildSize: 0.45,
                                        expand: false,
                                        builder: (_, controller) {
                                          return bookingcar_bottomsheet();
                                        },
                                      );
                                    });
                              } else if (e.title.toString() ==
                                  Variable.Typeoftruck.toString()) {
                                showModalBottomSheet(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        topRight: Radius.circular(40),
                                      ),
                                    ),
                                    context: context,
                                    isScrollControlled:
                                        true, // set this to true
                                    // Basit Basit
                                    builder: (_) {
                                      return DraggableScrollableSheet(
                                        maxChildSize: 1,
                                        minChildSize: 0.5,
                                        initialChildSize: 0.5,
                                        expand: false,
                                        builder: (_, controller) {
                                          // return bookingcar_bottomsheet();
                                          return viewcar_bottomsheet();
                                        },
                                      );
                                    });
                              }
                            },
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Request by car',
                        style: body3_style(color: Netural_2_Colour),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            '30.0 Tons',
                            style: body2_style(color: Netural_1_Colour),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            color: Color(0xffD8D8D8),
                            height: 25,
                            width: 1.5,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              '14m x 2m x 2m',
                              style: body2_style(color: Netural_1_Colour),
                            ),
                          )
                        ],
                      ),
                      is_show == true
                          ? SizedBox(
                              height: 10,
                            )
                          : SizedBox(
                              height: 20,
                            ),
                      is_show == true
                          ? Container()
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    //notification alert

                                    // showDialog(
                                    //   barrierColor:
                                    //       Color.fromRGBO(0, 0, 0, 0.7),
                                    //   context: context,
                                    //   builder: (BuildContext context) {
                                    //     return Notification_widget();
                                    //   },
                                    // );

                                    //

                                    setState(() {
                                      is_show = true;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Text(
                                        Variable.seedetails,
                                        style:
                                            body4_style(color: Primary_color),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset(
                                        'assets/downarrow.png',
                                        height: 18,
                                        width: 18,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                    ],
                  ),
                ),
                is_show == true
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // SizedBox(height: 10,),
                                Container(
                                  color: Color(0xffF2F2F2),
                                  width: MediaQuery.of(context).size.width * 1,
                                  height: 1,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  Variable.Typeofcontract,
                                  style: body3_style(color: Netural_2_Colour),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  Variable.messagetext,
                                  style: body2_style(color: Netural_1_Colour),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: Color(0xffF2F2F2),
                                  width: MediaQuery.of(context).size.width * 1,
                                  height: 1,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Variable.imageofgoods,
                                  style: body3_style(color: Netural_2_Colour),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  alignment: WrapAlignment.start,
                                  // spacing: 5,
                                  // runSpacing: 5,
                                  children: [
                                    Image.asset(
                                      'assets/Capsicum.png',
                                      height: 100,
                                      width: 100,
                                    ),
                                    Image.asset(
                                      'assets/potato.png',
                                      height: 88,
                                      width: 100,
                                    ),
                                    Image.asset(
                                      'assets/pumping.png',
                                      height: 88,
                                      width: 100,
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      is_show = false;
                                    });
                                  },
                                  child: is_show == false
                                      ? Container()
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              Variable.collapse,
                                              style: body4_style(
                                                  color: Primary_color),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              'assets/uparrow.png',
                                              height: 18,
                                              width: 18,
                                            )
                                          ],
                                        ),
                                ),
                                // SizedBox(
                                //   height: 15,
                                // ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Container(),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}

class DashedLineVerticalPainter extends CustomPainter {
  final Color color;

  DashedLineVerticalPainter({this.color});
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 10, dashSpace = 2, startY = 0;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

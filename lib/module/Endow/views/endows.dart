// ignore_for_file: prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'dart:math' as math;

import 'package:truckgo_project/core/utilities/widget_utilities/dotted_line.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/main_app_bar.dart';

class endow_page extends StatefulWidget {
  const endow_page({Key key}) : super(key: key);

  @override
  State<endow_page> createState() => _endow_pageState();
}

class _endow_pageState extends State<endow_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Netural_5_Colour,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: TextFormField(
                  maxLines: null,
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/icons/Search.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      fillColor: Netural_4_Colour,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: "Enter the promotion code",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  width: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Netural_5_Colour,
                    boxShadow: shadow_1
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 80,
                          top: -10,
                          child: Container(
                            height: 20,
                            width: 20,
                            child: CustomPaint(
                              painter: MyPainter(),
                            ),
                          )),
                      Positioned(
                        left: 80,
                        bottom: -10,
                        child: Container(
                          height: 20,
                          width: 20,
                          child: CustomPaint(
                            painter: MyPainter(),
                          ),
                        ),
                      ),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffF2F2F2),
                                      radius: 35,
                                      child: Center(
                                        child: Image.asset(
                                          "assets/icons/Ticket.png",
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: CustomPaint(
                                  painter: DashedLineVerticalPainter(),
                                  size: Size(2, double.infinity)),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
crossAxisAlignment: CrossAxisAlignment.start,                                children: [
                                  Row(
                                      children: [
                                        Expanded(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 15, right: 20),
                                          child: Text(
                                            "Truckgo promotion",
                                            style: body3_style(
                                                color: Primary_color),
                                          ),
                                        )),
                                        Align(
                                          alignment:
                                              AlignmentDirectional.topEnd,
                                          child: Container(
                                            height: 50,
                                            width: 56,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(18),
                                                  bottomLeft:
                                                      Radius.circular(18)),
                                              color: Color(0xff4964D8),
                                            ),
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Center(
                                                  child: Text(
                                                    "5%",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                )),
                                          ),
                                        )
                                      ],
                                    ),
                                  
                                  SizedBox(height: 15),
                                  Expanded(
                                      child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 20),
                                    child: Text(
                                      'Discount on your first shipment now with 5% off',
                                      style: caption2_style(
                                          color: Netural_2_Colour),
                                    ),
                                  )),
                                  SizedBox(height: 15)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0x0D000000);
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi * 2,
      math.pi * 2,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

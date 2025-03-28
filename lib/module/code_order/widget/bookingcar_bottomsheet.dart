// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:truckgo_project/core/core.dart';
// ignore: unused_import
import 'package:truckgo_project/module/module.dart';

class bookingcar_bottomsheet extends StatefulWidget {
  const bookingcar_bottomsheet({
    Key key,
  }) : super(key: key);

  @override
  State<bookingcar_bottomsheet> createState() => _bookingcar_bottomsheetState();
}

class _bookingcar_bottomsheetState extends State<bookingcar_bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 80,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Netural_3_Colour,
                      borderRadius: BorderRadius.circular(20)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Variable.Numberofvehicles,
                    style: body4_style(color: Netural_2_Colour),
                  ),
                  Text(
                    Variable.one,
                    style: body3_style(color: Netural_1_Colour),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Variable.Shippingcost,
                    style: body4_style(color: Netural_2_Colour),
                  ),
                  Text(
                    Variable.two5900,
                    style: body3_style(color: Netural_1_Colour),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  MySeparator(color: Netural_3_Colour),
                ],
              ),

              //  Row(
              //   children: [
              //     Dash(
              //         direction: Axis.horizontal,
              //         dashGap: 5,
              //         length: 370,
              //         // dashLength: 12,
              //         dashColor: Color(0xffCACACA)),
              //   ],
              // ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Variable.Totalmoney,
                    style: body2_style(color: Netural_1_Colour),
                  ),
                  Text(
                    Variable.two5900,
                    style: titile2_style(color: Netural_1_Colour),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(26)),
                          minimumSize: const Size(317, 42),
                          primary: Color.fromRGBO(255, 175, 42, 0.2)),
                      onPressed: () async {
                        Future.delayed(const Duration(seconds: 1), () {
                          setState(() {
                            // isLoading = false;
                          });
                        });
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child:
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            //   child:
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/orang_tag.png',
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            // FittedBox(
                            //     fit: BoxFit.fitWidth,
                            //     child:
                            Text(Variable.Promotion,
                                style: body4_style(color: Accent_color))
                            // )
                          ],
                        ),
                      ),
                      // ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(26)),
                          minimumSize: const Size(317, 42),
                          primary: Color.fromRGBO(73, 100, 216, 0.2)),
                      onPressed: () async {
                        Future.delayed(const Duration(seconds: 1), () {
                          setState(() {
                            // isLoading = false;
                          });
                        });
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child:
                            //  Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            //   child:
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/chooseicon.png',
                              height: 18,
                              width: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(Variable.Choosepayment,
                                style: body4_style(color: Primary_color))
                          ],
                        ),
                        // ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide.none,
                                borderRadius: BorderRadius.circular(26)),
                            minimumSize: const Size(317, 46),
                            primary: Primary_color),
                        onPressed: () async {
                         Get.back();
                        },
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(Variable.Confirm,
                                style: body2_style(color: Netural_5_Colour)))),
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
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

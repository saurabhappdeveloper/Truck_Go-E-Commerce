// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, non_constant_identifier_names

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class Code_order1_view extends StatefulWidget {
  const Code_order1_view({Key key}) : super(key: key);

  @override
  State<Code_order1_view> createState() => _Code_order1_viewState();
}

class _Code_order1_viewState extends State<Code_order1_view> {
  bool is_show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Appbar_widget(
                title: Variable.order_30528,
              ),

              SizedBox(
                height: 30,
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                          Container(
                            width: 90,
                            height: 43,
                            decoration: BoxDecoration(
                                color: Color(0xffFFAF2A),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    topRight: Radius.circular(16))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    Variable.seeall,
                                    style:
                                        caption1_style(color: Netural_5_Colour),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Image.asset(
                                  'assets/uparrow_white.png',
                                  height: 13,
                                  width: 13,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                // width: 200,
                                decoration: BoxDecoration(
                                  color: Color(0xff4964D8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                height: 80,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 82),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              Variable.Truckswithawnings,
                                              style: body3_style(
                                                  color: Netural_5_Colour),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 5),
                                                  child: Image.asset(
                                                    'assets/tag.png',
                                                    height: 14,
                                                    width: 14,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  Variable.two59,
                                                  style: body1_style(
                                                      color: Netural_5_Colour),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // child:
                              ),
                            ),
                            Positioned(
                                top: 1,
                                // right: -20,
                                left: -20,
                                bottom: 1,
                                child: Container(
                                  // color: Colors.red,
                                  child: Image.asset(
                                    'assets/truck2.png',
                                    height: 150,
                                    width: 170,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
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
                                        borderRadius:
                                            BorderRadius.circular(26)),
                                    minimumSize: const Size(317, 46),
                                    primary: Color(0xff4964D8)),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      duration: Duration(milliseconds: 400),
                                      reverseDuration:
                                          Duration(milliseconds: 400),
                                      type: PageTransitionType.rightToLeft,
                                      isIos: true,
                                      child: PaymentOrderView(),
                                    ),
                                  );
                                  // Get.toNamed(RoutesApp.paymentorder);
                                },
                                child: Text(
                                  Variable.bookingcar,
                                  style: body2_style(color: Netural_5_Colour),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              Order1commoncardWidget(
                issecondaddress: true,
                status_text: Variable.therearequotes,
                status_text_style: body3_style(color: Accent_color),
              ),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

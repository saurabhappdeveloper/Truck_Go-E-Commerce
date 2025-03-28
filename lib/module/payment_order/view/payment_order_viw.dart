// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class PaymentOrderView extends StatefulWidget {
  const PaymentOrderView({Key key}) : super(key: key);

  @override
  State<PaymentOrderView> createState() => _PaymentOrderViewState();
}

class _PaymentOrderViewState extends State<PaymentOrderView> {
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(Variable.Pleasetransfertheshippingamount,
                            style: body2_style(color: Netural_1_Colour)),
                        SizedBox(
                          height: 15,
                        ),
                        Flex(
                          direction: Axis.vertical,
                          children: [
                            MySeparator(color: Netural_3_Colour),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/graytag.png',
                              height: 22,
                              width: 22,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              Variable.two5900,
                              style: titile1_style(color: Primary_color),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
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
                                  
                                },
                                child: Text(
                                  Variable.pay,
                                  style: body2_style(color: Netural_5_Colour),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
                        child: Text(Variable.status,
                            style: body4_style(color: Netural_2_Colour)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          Variable.waitforpay,
                          style: body3_style(color: Primary_color),
                        ),
                      )
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
                  // height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: shadow_1),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(Variable.Shippingcost,
                                style: body4_style(color: Netural_2_Colour)),
                            Text(
                              Variable.two5900,
                              style: body3_style(color: Netural_1_Colour),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MySeparator(color: Color(0xffCACACA)),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Variable.Totalmoney,
                              style: body2_style(color: Netural_1_Colour),
                            ),
                            Text(
                              Variable.two5900,
                              style: body1_style(color: Primary_color),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
                  // height: 54,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: shadow_1),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(Variable.Paywith,
                            style: body3_style(color: Netural_2_Colour)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Image.asset(
                                'assets/Bank.png',
                                height: 18,
                                width: 18,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                Variable.TransferfundsdirectlytoTruckgo,
                                style: body2_style(color: Netural_1_Colour),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
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
                                padding:
                                    const EdgeInsets.only(left: 9, right: 9),
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
                                      style:
                                          body1_style(color: Netural_1_Colour),
                                    ),
                                  ),
                                  
                               Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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

              ///
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

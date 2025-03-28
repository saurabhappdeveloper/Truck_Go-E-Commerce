// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/driver_information/views/driver_information_page.dart';
import 'package:truckgo_project/module/order/view/order_1_view.dart';
import 'package:truckgo_project/module/order/view/order_information.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({Key key}) : super(key: key);

  @override
  State<Notification_page> createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Netural_5_Colour,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeft,
                    isIos: true,
                    child: Order1view(),
                  ),
                );
              },
              // onTap: () => Get.toNamed(RoutesApp.order1view),
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: shadow_1
                      //  [
                      //   BoxShadow(
                      //       color: Colors.grey[200],
                      //       blurRadius: 10,
                      //       spreadRadius: 3)
                      // ],
                      ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Text(Variable.Deliverycompleted,
                                  style: body1_style(color: Netural_1_Colour))),
                          Expanded(
                              flex: 1,
                              child: Text("11:00 AM",
                                  textAlign: TextAlign.end,
                                  style:
                                      caption1_style(color: Netural_2_Colour)))
                        ],
                      ),
                      SizedBox(height: 7),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Oder #30528 from Los Angeles - Las Vegas has been successfully delivered',
                            style: body4_style(color: Netural_3_Colour)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                    duration: Duration(milliseconds: 400),
                    reverseDuration: Duration(milliseconds: 400),
                    type: PageTransitionType.rightToLeft,
                    isIos: true,
                    child: order_information(),
                  ),
                );

                //  Navigator.push<void>(
                //                       context,
                //                       MaterialPageRoute<void>(
                //                         builder: (BuildContext context) =>
                //                             order_information(),
                //                       ),
                //                     );
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: shadow_1
                      //  [
                      //   BoxShadow(
                      //       color: Colors.grey[200],
                      //       blurRadius: 10,
                      //       spreadRadius: 3)
                      // ],
                      ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(Variable.Paymentsuccess,
                                style: body1_style(color: Netural_1_Colour)),
                          ),
                          Expanded(
                              flex: 1,
                              child: Text(
                                "2020/03/20 - 10:00 AM",
                                textAlign: TextAlign.end,
                                style: caption1_style(color: Netural_2_Colour),
                              ))
                        ],
                      ),
                      SizedBox(height: 7),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Oder #30528 from Los Angeles - Las Vegas has been successfully delivered',
                            style: body4_style(color: Netural_3_Colour)),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';
import 'package:truckgo_project/module/car_cont/views/car_cont.dart';
import 'package:truckgo_project/module/order_infromation/views/order_information.dart';

class payment_methods extends StatefulWidget {
  const payment_methods({Key key}) : super(key: key);

  @override
  State<payment_methods> createState() => _payment_methodsState();
}

class _payment_methodsState extends State<payment_methods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          main_app_bar(
            main_heading: Variable.Paymentmethods,
            onpressed: () {
              Get.back();
              //    Navigator.push<void>(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (BuildContext context) => order_informationState(),
              //   ),
              // );
            },
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
                  child: car_cont_page(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[100],
                          blurRadius: 10,
                          spreadRadius: 3)
                    ],
                    color: Netural_5_Colour,
                  ),
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      Image.asset(
                        AppIconImages.bank,
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Text(
                          Variable.Transferfundsdirectlytous,
                          style: payment_shipments_style,
                        ),
                      )
                    ],
                  )),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10,
                        spreadRadius: 3)
                  ],
                  color: Netural_5_Colour,
                ),
                padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    Image.asset(
                      AppIconImages.bank1,
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(Variable.Paymentthroughtheapplication,
                              style: payment_shipments_style),
                          SizedBox(height: 6),
                          Text(Variable.ApplicableforVisaMasterATMcards,
                              style: payment_shipments_style1),
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    ));
  }
}

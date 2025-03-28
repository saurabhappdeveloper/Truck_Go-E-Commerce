// ignore_for_file: prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/cancel_order/views/cancel_order.dart';
import 'package:truckgo_project/module/car_cont/widgets/car_cont_widgets.dart';
import 'package:collection/collection.dart';
import 'package:truckgo_project/module/payment_methods/views/payments_methods.dart';

List details = [
  {
    "line1": "28.0 Tons - Cont 40'",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.3m",
    "amount": "\$234.08"
  },
  {
    "line1": "28.0 Tons - Cont 40'",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.6m",
    "amount": "\$234.08"
  },
  {
    "line1": "28.0 Tons - Cont 45'",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.6m",
    "amount": "\$234.08"
  },
  {
    "line1": "30.0 Tons - Mooc tarpaulin box 14m",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.7m",
    "amount": "\$234.08"
  },
  {
    "line1": "30.0 Tons - Mooc tarpaulin box 17m",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.7m",
    "amount": "234.08"
  },
  {
    "line1": "30.0 Tons - Mooc tarpaulin box 14m",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.7m",
    "amount": "\$234.08"
  },
  {
    "line1": "30.0 Tons - Mooc tarpaulin box 17m",
    "line2": "Length 12.0m x Weight 2.3m x Height 2.7m",
    "amount": "234.08"
  },
];

class car_cont_page extends StatefulWidget {
  const car_cont_page({Key key}) : super(key: key);

  @override
  State<car_cont_page> createState() => _car_cont_pageState();
}

class _car_cont_pageState extends State<car_cont_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Netural_5_Colour,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                width: MediaQuery.of(context).size.width * 1,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          onPressed: () {
                            Get.back();
                            // Navigator.push<void>(
                            //   context,
                            //   MaterialPageRoute<void>(
                            //     builder: (BuildContext context) =>
                            //         payment_methods(),
                            //   ),
                            // );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          Variable.CarCont,
                          style: Main_heading_title2,
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 15),
              Column(
                  children: details
                      .mapIndexed((index, element) => Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                      duration: Duration(milliseconds: 400),
                                      reverseDuration:
                                          Duration(milliseconds: 400),
                                      type: PageTransitionType.rightToLeft,
                                      isIos: true,
                                      child: cancel_order_page(),
                                    ),
                                  );
                                 
                                },
                                child: car_cont_widgets(
                                  line1: element['line1'].toString(),
                                  line2: element['line2'].toString(),
                                  amount: element['amount'].toString(),
                                ),
                              ),
                              SizedBox(height: 20)
                            ],
                          ))
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}

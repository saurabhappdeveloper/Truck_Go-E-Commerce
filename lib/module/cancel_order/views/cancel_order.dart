// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/main_app_bar.dart';
import 'package:collection/collection.dart';
import 'package:truckgo_project/module/cancel_order/widgets/check_box.dart';
import 'package:truckgo_project/module/car_cont/views/car_cont.dart';

bool _isChecked = false;

List payment = [
  {"cancel_id": 0, "cancel_reason": "I no longer need it"},
  {"cancel_id": 1, "cancel_reason": "Change order information"},
  {"cancel_id": 3, "cancel_reason": "Find another car"},
  {
    "cancel_id": 4,
    "cancel_reason":
        "The type of vehicle or driver does not match the pervious confirmation"
  },
  {
    "cancel_id": 5,
    "cancel_reason":
        "The driver asks for extra fees not included in the agreement"
  },
  {"cancel_id": 6, "cancel_reason": "Attitude driver"},
  {"cancel_id": 7, "cancel_reason": "Driver arrived late loading point"},
  {"cancel_id": 7, "cancel_reason": "Unable to contact the driver"},
  {"cancel_id": 7, "cancel_reason": "I do not trust the driver"},
];

class cancel_order_page extends StatefulWidget {
  const cancel_order_page({Key key}) : super(key: key);

  @override
  State<cancel_order_page> createState() => _cancel_order_pageState();
}

class _cancel_order_pageState extends State<cancel_order_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                main_app_bar(
                  main_heading: Variable.Cancel_order,
                  onpressed: (){
                       Get.back();
                  },
                ),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                        Variable.Your_order_is_very_important_to_the_driver,
                        style: cancel_order_style1)),
                SizedBox(height: 6),
                Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Text(
                        Variable
                            .Pleaseshareyourreasontohelpimproveorderservicequality,
                        style: cancel_order_style2)),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 10,
                              spreadRadius: 3)
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Netural_5_Colour),
                    child: Column(
                        children: payment
                            .mapIndexed(
                              (index, element) => Column(
                                children: [
                                  CustomCheckbox(
                                    title: element['cancel_reason'].toString(),
                                    titlestyle: Checkbox_Cancel_order,
                                    value: _isChecked,
                                    onChanged: (bool newValue) {
                                      print(newValue);
                                      _isChecked = newValue;
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )
                            .toList()),
                  ),
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
              height: 40,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: Primary_color),
                onPressed: () {},
                child: Text('Submit', style: Contious_button_style),
              ),
            ),
          )),
    );
  }
}

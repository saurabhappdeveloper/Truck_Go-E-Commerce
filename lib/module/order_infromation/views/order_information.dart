// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';
import 'package:truckgo_project/module/main_screen/views/main_screen_page.dart';
import 'package:truckgo_project/module/payment_methods/views/payments_methods.dart';

dynamic date_time;

class order_informationState extends StatefulWidget {
  const order_informationState({Key key}) : super(key: key);

  @override
  State<order_informationState> createState() => _order_informationStateState();
}

class _order_informationStateState extends State<order_informationState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Netural_5_Colour,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Netural_1_Colour,
                              size: 18,
                            ),
                            onPressed: () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      Mainscreen(),
                                ),
                              );
                            }),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          Variable.Orderinformation,
                          style: Main_heading_title2,
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child:
                      Text(Variable.Shipping_address, style: Shippingaddress),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            AppIconImages.yellow_location,
                            height: 20,
                            width: 20,
                          ),
                          Dash(
                              direction: Axis.vertical,
                              dashGap: 5,
                              length: 50,
                              // dashLength: 12,
                              dashColor: Netural_2_Colour),
                          Image.asset(
                            AppIconImages.Blue_location,
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: TextFormField(
                                maxLines: null,
                                decoration: InputDecoration(
                                    // suffixIcon: Image.asset(
                                    //   "assets/icons/Calendar_date1.png",
                                    //   height: 40,
                                    //   width: 40,
                                    // ),
                                    filled: true,
                                    fillColor: Netural_4_Colour,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: Variable.Pickuppoint,
                                    hintStyle: Textfield_hintText,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 15, 15, 15)),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: TextFormField(
                                maxLines: null,
                                decoration: InputDecoration(
                                    // suffixIcon: Image.asset(
                                    //   "assets/icons/Calendar_date1.png",
                                    //   height: 40,
                                    //   width: 40,
                                    // ),
                                    filled: true,
                                    fillColor: Netural_4_Colour,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: Variable.Point_of_Delivery,
                                    hintStyle: Textfield_hintText,
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 15, 15, 15)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(Variable.Loading_Time, style: Shippingaddress),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Netural_4_Colour),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: FittedBox(
                                fit: BoxFit.fill,
                                child: Text(
                                  date_time == null ||
                                          date_time == "".toString()
                                      ? Variable.For_Example
                                      : date_time.toString(),
                                  style: date_time == null ||
                                          date_time == "".toString()
                                      ? Textfield_hintText
                                      : Textfield_hintText2,
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          title: Column(
                                            children: [
                                              Container(
                                                  height: 150,
                                                  alignment: Alignment.center,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.9,
                                                  child: CupertinoDatePicker(
                                                    initialDateTime:
                                                        DateTime.now(),
                                                    onDateTimeChanged:
                                                        (DateTime newdate) {
                                                      setState(() {
                                                        date_time = newdate;
                                                        print(date_time);
                                                        print(
                                                            "sssssssswwwwwwwwwwwwwwww");
                                                      });
                                                    },
                                                    use24hFormat: true,
                                                    maximumDate:
                                                        DateTime(2050, 12, 30),
                                                    minimumYear: 2010,
                                                    maximumYear: 2050,
                                                    minuteInterval: 1,
                                                    mode:
                                                        CupertinoDatePickerMode
                                                            .dateAndTime,
                                                  ))
                                            ],
                                          ),
                                          actions: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 5, left: 5),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          minimumSize:
                                                              const Size(
                                                                  148, 50),
                                                          primary:
                                                              Netural_5_Colour),
                                                      onPressed: () {
                                                        setState(() {
                                                          date_time = '';
                                                          Get.back();
                                                        });
                                                      },
                                                      child: Text('Cancel',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Primary_color)),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          minimumSize:
                                                              const Size(
                                                                  148, 50),
                                                          primary:
                                                              Primary_color),
                                                      onPressed: () {
                                                        setState(() {
                                                          date_time;
                                                          Get.back();
                                                        });
                                                      },
                                                      child: Text('Confirm',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Netural_5_Colour)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(height: 10)
                                          ]));
                            },
                            child: Image.asset(
                              AppIconImages.Calendar_date1,
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(Variable.Name_of_the_goods_and_volume,
                      style: Shippingaddress),
                ),
                SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Netural_4_Colour,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: Variable.for_example_rice_irons,
                          hintStyle: Textfield_hintText,
                          contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15)),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  // height: 40,
                  padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 13, right: 10),
                              child: Text(
                                Variable.Tons1,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 2,
                              color: Netural_3_Colour,
                            ),

                            // Text(
                            //   '|',
                            //   style: TextStyle(color: Colors.grey),
                            // ),
                            SizedBox(width: 10)
                          ],
                        ),
                        filled: true,
                        fillColor: Netural_4_Colour,
                        // disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: Variable.Enter_the_item_weights,
                        contentPadding: EdgeInsets.fromLTRB(20, 15, 0, 13),
                        hintStyle: Textfield_hintText,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            height: 40,
            margin: EdgeInsets.all(25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Primary_color),
              onPressed: () {
                 Navigator.push(
            context,
            PageTransition(
              duration: Duration(milliseconds: 400),
              reverseDuration: Duration(milliseconds: 400),
              type: PageTransitionType.rightToLeft,
              isIos: true,
              child: payment_methods(),
            ),
          );
              
              },
              child: Text(Variable.Continue, style: Contious_button_style),
            ),
          ),
        ));
  }
}

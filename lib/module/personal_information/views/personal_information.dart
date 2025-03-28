// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/main_app_bar.dart';

void _showAlertDialog(BuildContext context) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: Text('Notice'),
      content: Text('Are you sure you want to log out?'),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('No', style: TextStyle(color: Colors.black)),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Yes', style: TextStyle(color: Colors.blue)),
        ),
      ],
    ),
  );
}

class personal_information extends StatefulWidget {
  const personal_information({Key key}) : super(key: key);

  @override
  State<personal_information> createState() => _personal_informationState();
}

class _personal_informationState extends State<personal_information> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Netural_5_Colour,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                main_app_bar(
                  main_heading: "Personal Information",
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("First and last name",
                      style: body3_style(color: Netural_2_Colour)),
                ),
                SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        maxLines: null,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF2F2F2),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Enter first and last name",
                            hintStyle: body2_style(color: Netural_3_Colour),
                            contentPadding:
                                EdgeInsets.fromLTRB(15, 15, 15, 15)),
                      ),
                    )),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Email",
                      style: body3_style(color: Netural_2_Colour)),
                ),
                SizedBox(height: 10),
                Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        maxLines: null,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffF2F2F2),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Enter Email",
                            hintStyle: body2_style(color: Netural_3_Colour),
                            contentPadding:
                                EdgeInsets.fromLTRB(15, 15, 15, 15)),
                      ),
                    )),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Telephone number",
                      style: body3_style(color: Netural_2_Colour)),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 44,
                        child: IntlPhoneField(
                            textAlign: TextAlign.left,
                            // textAlignVertical: TextAlignVertical.,
                            autovalidateMode: AutovalidateMode.disabled,
                            flagsButtonPadding:
                                const EdgeInsets.fromLTRB(15, 0, 10, 0),
                            dropdownIconPosition: IconPosition.trailing,
                            showCursor: true,
                            showCountryFlag: true,
                            dropdownTextStyle:
                                body1_style(color: Primary_color),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                fillColor: Color(0xffF2F2F2),
                                filled: true,
                                hintText: Variable.enter_phone_num,
                                hintStyle: body3_style(color: Netural_3_Colour),
                                counterText: '',
                                contentPadding:
                                    EdgeInsets.only(top: 20, left: 30)),
                            initialCountryCode: 'IN',
                            onChanged: (value) {},
                            keyboardType: TextInputType.number,
                            inputFormatters: ValidationHelper.inputValidator(
                                ValidationHelper.mobile)),
                      ),
                    ],
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                //   child: SizedBox(
                //     height: 50,
                //     child: IntlPhoneField(
                //       flagsButtonPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                //       dropdownIconPosition: IconPosition.trailing,
                //       showCursor: true,
                //       showCountryFlag: true,
                //       dropdownIcon: Icon(
                //         Icons.keyboard_arrow_down,
                //         size: 26,
                //         color: Color(0xffCACACA),
                //       ),
                //       dropdownTextStyle: TextStyle(
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.blue),
                //       decoration: InputDecoration(
                //         border: OutlineInputBorder(
                //           borderSide: BorderSide.none,
                //           borderRadius: BorderRadius.circular(24),
                //         ),
                //         fillColor: Color(0xffF2F2F2),
                //         filled: true,
                //         hintText: 'Enter Phone Number',
                //         hintStyle: body2_style(color: Netural_3_Colour),
                //         counterText: '',
                //       ),
                //       initialCountryCode: 'IN',
                //       onChanged: (phone) {
                //         print(phone.completeNumber);
                //       },
                //       keyboardType: TextInputType.number,
                //       inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //     ),
                //   ),
                // ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text("Identity Card",
                      style: body3_style(color: Netural_2_Colour)),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 25, 20, 25),
                                    child: Image.asset(
                                      "assets/icons/ID_card_front.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFAF2A),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft:
                                                    Radius.circular(18))),
                                        width: 35,
                                        height: 35,
                                        child: Center(
                                          child: Image.asset(
                                            "assets/icons/data_upload.png",
                                            height: 16,
                                            width: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffF2F2F2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 25, 20, 25),
                                    child: Image.asset(
                                      "assets/icons/ID_card_front.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffFFAF2A),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft:
                                                    Radius.circular(18))),
                                        width: 35,
                                        height: 35,
                                        child: Center(
                                          child: Image.asset(
                                            "assets/icons/data_upload.png",
                                            height: 16,
                                            width: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50)
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              height: 40,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Primary_color),
                onPressed: () => _showAlertDialog(context),
                child: Text('Update',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffffffff))),
              ),
            ),
          )),
    );
  }
}

// testing

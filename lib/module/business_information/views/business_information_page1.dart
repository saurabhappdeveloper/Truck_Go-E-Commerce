// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/main_app_bar.dart';

class business_information_page1 extends StatefulWidget {
  const business_information_page1({Key key}) : super(key: key);

  @override
  State<business_information_page1> createState() =>
      _business_information_page1State();
}

class _business_information_page1State
    extends State<business_information_page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                main_app_bar(
                  main_heading: "Business Information",
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Tax identification number",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 15),
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
                            hintText: "Enter tax identification number",
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15)),
                      ),
                    )),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Enter the correct tax code for the system to automatically retrieve information about the company",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Business name",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 15),
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
                            hintText: "Enter business name",
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15)),
                      ),
                    )),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(
                    "Registered address",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 15),
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
                            hintText: "Enter registered address",
                            hintStyle:
                                TextStyle(fontSize: 14, color: Colors.grey),
                            contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15)),
                      ),
                    )),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
              height: 40,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    primary:  Primary_color),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        titlePadding: EdgeInsets.zero,
                        iconPadding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        icon: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(50, 30, 50, 20),
                            child: Image.asset(
                              "assets/icons/update.png",
                            ),
                          ),
                        ),
                        title: Column(
                          children: [
                            Center(
                                child: Text(
                              'Update successful',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff4964D8),
                                  fontWeight: FontWeight.w500),
                            )),
                            SizedBox(height: 20)
                          ],
                        ),
                        content: Text(
                          'Updated personal information successfully',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        actions: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            height: 40,
                            margin: EdgeInsets.all(20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                  primary: Primary_color),
                              onPressed: () {},
                              child: Text('Update',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xfffffffff))),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
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

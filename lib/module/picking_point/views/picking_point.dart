import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

TextEditingController district_controller = TextEditingController();

class picking_point extends StatefulWidget {
  @override
  State<picking_point> createState() => _picking_pointState();
}

class _picking_pointState extends State<picking_point> {
  final TextEditingController city_controller = TextEditingController();

  String city_text = "";
  int index1;
  bool is_selected_city = false;
  // city_controller;
  List search_array = [
    {"city_name": "Las angelas", "address": "Las angelas, California USA"},
    {"city_name": "Las Vegas", "address": "Las Vegas, California USA"},
    {"city_name": "Nalasopara angelas", "address": "Nalasopara, Mumbai 400099"},
    {"city_name": "Virar", "address": "Virar, Mumbai 400099"},
    {"city_name": "Bhayandar", "address": "Bhayandar, Mumbai 400099"}
  ];

  void initState() {
    super.initState();
    setState(() {
      dynamic_array.addAll(search_array);
    });
  }

  RxList dynamic_array = [].obs;

  search_function(String city_text) {
    print("inside search");
    index1 = null;
    if (city_text == "") {
      is_selected_city = false;
      dynamic_array = [].obs;
      return dynamic_array.addAll(search_array);
    }
    for (var search_array_list in search_array) {
      print(search_array_list["city_name"]);
      if (search_array_list["city_name"]
          .toString()
          .isCaseInsensitiveContainsAny(city_text.toString())) {
        print("inside if");
        print(search_array_list);
        dynamic_array = [].obs;
        dynamic_array.add(search_array_list);
        print(dynamic_array);
        return;
      } else {
        print("inside else");
        is_selected_city = false;
        dynamic_array = [].obs;
      }
    }
    // search_array.mapIndexed((index, element) => {
    //   print(element["city_name"]),
    //   if(element["city_name"].toString().isCaseInsensitiveContainsAny(city_text.toString()))
    //   {
    //     print("inside if"),
    //     print(search_array[index]),
    //     setState(() {
    //       dynamic_array = [].obs;
    //         dynamic_array.add(element);
    //         print(dynamic_array);
    //     })

    //   }
    // }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            main_app_bar(
              main_heading: Variable.picking_title,
              onpressed: () {
                Navigator.pop(context);
              },
            ),
            // Text("hii"),
            // Text(city_controller.text.toString()),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 25),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: TextFormField(
                    controller: city_controller,
                    textAlign: TextAlign.left,
                    style: bottomsheet_content,
                    decoration: InputDecoration(
                      suffixIcon: city_controller.text != ""
                          ? InkWell(
                              onTap: () {
                                setState(() {
                                  is_selected_city = false;
                                  city_controller.text = "";
                                  city_text = "";
                                  index1 = null;
                                  dynamic_array = [].obs;
                                  dynamic_array.addAll(search_array);
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Image.asset(
                                  "assets/remove.png",
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
                        child: Image.asset(
                          "assets/Search.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      filled: true,
                      fillColor: Netural_4_Colour,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: Variable.enter_location,
                      hintStyle: textform_hint_textstyle,
                    ),
                    onChanged: (value) {
                      setState(() {
                        city_text = value;
                        search_function(city_text);
                        print(value);
                      });
                    },
                  )),
            ),

            // city_text.toString() == "".toString() ||
            //         city_text.toString() == null.toString() ||
            is_selected_city
                ? SizedBox.shrink()
                : Expanded(
                    child: Obx(
                    () =>
                        // Column(
                        //   children: [
                        ListView(
                            children: dynamic_array
                                .mapIndexed((index, element) =>
                                    // city_controller.toString() != "".toString()?
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          is_selected_city = true;
                                          index1 = index;
                                          city_controller.text =
                                              element["city_name"];
                                        });
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            26, 10, 26, 12),
                                        child: Container(
                                          padding: EdgeInsets.only(bottom: 12),
                                          decoration: BoxDecoration(
                                              // color: Colors.red,
                                              border: Border(
                                            bottom: BorderSide(
                                              color: divider_Colour,
                                              // width: m,
                                            ),
                                          )),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/search_location.png",
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.contain,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 10,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          element["city_name"]
                                                              .toString(),
                                                          style:
                                                              bottomsheet_content,
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                      // SizedBox(
                                                      //   height: 4,
                                                      // ),
                                                      FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          element["address"]
                                                              .toString(),
                                                          style: status_style2,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList()),
                    //   ],
                    // ),
                  )),
            index1 == null
                ? SizedBox.shrink()
                : Expanded(
                    child: ListView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 28, bottom: 3),
                              child: Text(
                                Variable.state,
                                style: state_style,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 11, 25, 15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: TextFormField(
                                  style: bottomsheet_content,
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    filled: true,
                                    fillColor: Netural_4_Colour,
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: Variable.enter_state,
                                    hintStyle: textform_hint_textstyle,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28),
                              child: Text(
                                Variable.district,
                                style: state_style,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 12, 25, 20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(22),
                                  child: TextFormField(
                                    controller: district_controller,
                                    textAlign: TextAlign.left,
                                    style: bottomsheet_content,
                                    decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.only(left: 4),

                                      suffixIcon:
                                          // city_controller.text != ""?
                                          InkWell(
                                        onTap: () {
                                          showModalBottomSheet(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(35),
                                                topRight: Radius.circular(35),
                                              ),
                                            ),
                                            context: context,
                                            isScrollControlled:
                                                true, // set this to true
                                            // Basit Basit
                                            builder: (_) {
                                              return DraggableScrollableSheet(
                                                maxChildSize: 1,
                                                minChildSize: 0.75,
                                                initialChildSize: 0.75,
                                                expand: false,
                                                builder: (_, controller) {
                                                  return district_bottomsheet_design(
                                                      controller: controller);
                                                },
                                              );
                                            },
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Image.asset(
                                            "assets/downarrow.png",
                                            height: 15,
                                            width: 16,
                                          ),
                                        ),
                                      ),
                                      // :SizedBox.shrink(),

                                      filled: true,
                                      fillColor: Netural_4_Colour,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: Variable.enter_location,
                                      hintStyle: textform_hint_textstyle,
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        storage.remove("selected_index");
                                      });
                                    },
                                  )),
                            ),
                            SizedBox(
                              height: 210,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: index1 == null
              ? SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, bottom: 30, top: 15),
                  child: Container(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            storage.remove("selected_index");
                            Navigator.push(
                              context,
                              PageTransition(
                                duration: Duration(milliseconds: 400),
                                reverseDuration: Duration(milliseconds: 400),
                                type: PageTransitionType.rightToLeft,
                                isIos: true,
                                child: order_map_driver_profile(),
                              ),
                            );
                          });

                          //                           Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) =>  order_map_driver_profile()),
                          // );
                          //                         });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            Variable.confirm,
                            style: submit_button_style,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Primary_color),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0),
                            )))),
                  ),
                ),
        ),
      ),
    );
  }
}

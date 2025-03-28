import 'dart:io';
import 'dart:ui';
import 'package:truckgo_project/module/module.dart';
import 'package:truckgo_project/module/personal_information/views/personal_information.dart';
import '../../../core/core.dart';

List district_array2 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
// RxList seletced_truck = [].obs;
RxInt selected_truck_count = 0.obs;

RxInt selected_index1 = 0.obs;
// RxBool? is_selected = false.obs;
// bool is_selected_bool = false;

class order_information extends StatefulWidget {
  const order_information({Key key}) : super(key: key);

  @override
  State<order_information> createState() => _order_informationState();
}

class _order_informationState extends State<order_information> {
  bool add_photo = false;
  List image_truck_array = [
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Trucks with awnings",
      "truck_desc": "Friendly with all types of goods"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "CONT Vehicle (Garage)",
      "truck_desc": "Friendly with all types of goods"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "Trucks with awnings",
      "truck_desc": "Friendly with all types of goods"
    },
    {
      "truck_image": "assets/truck1.png",
      "truck_name": "CONT Vehicle (Garage shell)",
      "truck_desc": "Friendly with all types of goods"
    },
  ];

  List<XFile> imageFileList = <XFile>[];
  XFile imageFile = null;

  Future imageSelector(BuildContext context, String pickerType) async {
    print(pickerType);
    switch (pickerType) {
      case "gallery":

        /// GALLERY IMAGE PICKER
        // imageFile = (await ImagePicker.pickImage(source: ImageSource.gallery)) as File?;
        break;

      case "camera": // CAMERA CAPTURE CODE
        cameraimage();
        break;
    }
  }

  bool isimageuploading1 = false;
  bool isimageuploading2 = false;
  bool isimageuploading3 = false;
  final ImagePicker picker = ImagePicker();
  cameraimage() async {
    print("inside camera");

    imageFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 10);
    setState(() {
      imageFileList.add(imageFile);
    });
  }

  void initState() {
    super.initState();
    setState(() {
      print('this is init');
      imageFile = null;
      imageFileList = [];
      selected_truck_count(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Netural_5_Colour,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Appbar(
            leading_widget: Image(
              image: AssetImage('assets/Leftarrow.png'),
              height: 18,
              width: 18,
            ),
            action_ontap: () {},
            height: 60,
            leading_ontap: () {
              print("this is leading icon");
              setState(() {
                imageFile = null;
                imageFileList = [];
                selected_truck_count(0);
              });
              Navigator.pop(context);
            },
            title: Variable.order_info_heading,
            text_align: TextAlign.center,
            text_style: title_style,
            leading_action: true,
            decoration: BoxDecoration(
              color: Netural_5_Colour,
              boxShadow: [
                BoxShadow(
                  blurRadius: 190.0,
                  spreadRadius: -27,
                  offset: Offset(
                    -25,
                    -25,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              child: ListView(
                padding: EdgeInsets.fromLTRB(22, 15, 22, 8),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Netural_5_Colour,
                      boxShadow: [
                        BoxShadow(
                          color: shadow_color,
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(17, 14, 17, 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            // flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              // color: Colors.red,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    Variable.number_of_vehicles,
                                    style: numberof_vehicle_style,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          InkWell(
                            onTap: () => _showMyDialog(),
                            child: Container(
                              height: 44,
                              // width: MediaQuery.of(context).size.width *0.24,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Netural_4_Colour),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(4, 4, 8, 4),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 36,
                                      // height: 36,
                                      decoration: BoxDecoration(
                                          color: Netural_5_Colour,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: Center(
                                          child: Obx(() => Text(
                                                selected_truck_count.toString(),
                                                style: heading_style,
                                              ))),
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),

                                    // ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 7.0),
                                      child: Container(
                                          height: 16,
                                          width: 16,
                                          child: Image.asset(
                                              "assets/downarrow.png")),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 24, 0, 13),
                        child: Text(
                          Variable.row_size,
                          style: heading_style,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Netural_5_Colour,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black.withOpacity(0.05),
                          color: shadow_color,
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            height: 44,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Netural_4_Colour),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                        alignment: Alignment.center,
                                        // color: Colors.red,
                                        width:
                                            MediaQuery.of(context).size.height,
                                        child: TextFormField(
                                          readOnly: true,
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
                                                    return row_size_bottomsheet(
                                                        controller: controller);
                                                  },
                                                );
                                              },
                                            );
                                          },
                                          controller: length,
                                          textAlignVertical:
                                              TextAlignVertical.top,
                                          decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.only(bottom: 5),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              hintText: Variable.lengthm,
                                              hintStyle:
                                                  textform_hint_textstyle),
                                          // onChanged: (value) {

                                          // },
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 9.0, left: 9),
                                    child: Container(
                                        child: Image.asset(
                                      "assets/dash.png",
                                      width: 4,
                                      height: 24,
                                    )),
                                  ),
                                  Expanded(
                                    child: Container(
                                        // color: Colors.yellow,
                                        // width: 40,
                                        child: TextFormField(
                                      readOnly: true,
                                      controller: width,
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
                                                return row_size_bottomsheet(
                                                    controller: controller);
                                              },
                                            );
                                          },
                                        );
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: Variable.widthm,
                                          contentPadding:
                                              EdgeInsets.only(bottom: 5),
                                          hintStyle: textform_hint_textstyle),
                                    )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 9.0, left: 9),
                                    child: Container(
                                        child: Image.asset(
                                      "assets/dash.png",
                                      width: 4,
                                      height: 24,
                                    )),
                                  ),
                                  Expanded(
                                    child: Container(
                                        // color: Colors.green,
                                        // width: 40,
                                        child: TextFormField(
                                      readOnly: true,
                                      controller: height,
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
                                                return row_size_bottomsheet(
                                                    controller: controller);
                                              },
                                            );
                                          },
                                        );
                                      },
                                      decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(bottom: 5),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          hintText: Variable.heightm,
                                          hintStyle: textform_hint_textstyle),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Netural_4_Colour,
                              ),
                              height: 100,
                              child: TextFormField(
                                // expands: true,
                                minLines: 6,
                                maxLines: 10,
                                decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    // fillColor: Colors.grey,
                                    hintText: Variable.notes_for_vehical_owner,
                                    hintStyle: textform_hint_textstyle,
                                    hintTextDirection: TextDirection.ltr),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 13),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          Variable.add_photo,
                          style: heading_style,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Netural_5_Colour,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black.withOpacity(0.05),
                          color: shadow_color,
                          blurRadius: 40,
                          spreadRadius: 0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(14, 12, 14, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        imageFileList.length == 0
                            ? SizedBox.shrink()
                            : Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: Wrap(
                                    alignment: WrapAlignment.start,
                                    children: imageFileList
                                        .mapIndexed(
                                          (index, element) => Padding(
                                            padding: const EdgeInsets.only(
                                                right: 12, bottom: 10),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  // color: Colors.yellow,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      // color: Colors.black.withOpacity(0.05),
                                                      color: shadow_color,
                                                      blurRadius: 40,
                                                      spreadRadius: 0,
                                                      offset: Offset(0, 4),
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18)),
                                              height: 88,
                                              width: 88,
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18),
                                                    child: Image.file(
                                                      File(element.path),
                                                      fit: BoxFit.cover,
                                                      gaplessPlayback: true,
                                                      height:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .height,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional
                                                            .topEnd,
                                                    child: InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          imageFileList
                                                              .removeAt(index);
                                                        });
                                                      },
                                                      child: Container(
                                                          height: 32,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            18),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            10),
                                                                  ),
                                                                  color:
                                                                      Sementic_1_Colour),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Image.asset(
                                                              "assets/delete.png",
                                                              height: 16,
                                                              width: 16,
                                                            ),
                                                          )),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList())),
                        DottedBorder(
                            strokeWidth: 2,
                            dashPattern: [8],
                            borderType: BorderType.RRect,
                            radius: Radius.circular(8),
                            color: Netural_3_Colour,
                            child: Container(
                                height: 44,
                                // width: 150,
                                alignment: Alignment.center,
                                child:
                                    // Text("data")
                                    InkWell(
                                  onTap: () {
                                    setState(() {
                                      add_photo = !add_photo;
                                      imageSelector(context, "camera");
                                    });
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage('assets/photo.png'),
                                        height: 16,
                                        width: 16,
                                        fit: BoxFit.cover,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: Text(
                                          Variable.add_photo,
                                          style: textform_hint_textstyle,
                                        ),
                                      )
                                    ],
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 13),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  Variable.types_of_service,
                                  textAlign: TextAlign.left,
                                  style: heading_style,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    Variable.distinguish_car,
                                    style: distinguish_car_style,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      // width: double.infinity,
                      alignment: Alignment.centerLeft,
                      // height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        color: Netural_5_Colour,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: shadow_color,
                            blurRadius: 40,
                            spreadRadius: 0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
                        child: truck_image_widget(
                            image_details_array: image_truck_array),
                      )),

                  // )
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 25,
                      // left: 22, right: 22
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              duration: Duration(milliseconds: 400),
                              reverseDuration: Duration(milliseconds: 400),
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: driver_information(),
                            ),
                          );
                        },
                        child: Container(
                          height: 45,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  Variable.get_quote,
                                  style: submit_button_style,
                                ),
                              )),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Primary_color),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            )))),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  int index1 = null;
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      barrierColor: Colors.black.withOpacity(0.7),

      builder: (BuildContext ctx) {
        return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              // insetPadding: EdgeInsets.zero,
              // contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.fromLTRB(24, 60, 24, 60),
              contentPadding: EdgeInsets.fromLTRB(15, 15, 15, 15),

              title: Center(
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      Variable.number_of_vehicles,
                      style: bottomsheet_title,
                    )),
              ),
              content: Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                      children: district_array2
                          .mapIndexed((index, element) => InkWell(
                                onTap: () {
                                  setState(() {
                                    print("clicked");
                                    index1 = index;
                                    selected_truck_count(int.parse(element));
                                    // if (!seletced_truck.contains(index)) {
                                    //   seletced_truck.add(index);
                                    // } else {
                                    //   seletced_truck.remove(index);
                                    // }
                                    // print(seletced_truck);
                                    Navigator.of(context).pop();
                                  });
                                },
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4.0),
                                      child: Row(
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 12),
                                              child: Container(
                                                  // color: Colors.red,
                                                  height: 16,
                                                  width: 16,
                                                  child: Image.asset(
                                                      "assets/delivery_truck.png")),
                                            ),
                                            Expanded(
                                                flex: 4,
                                                child: Container(
                                                  // color: Colors.yellow,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 2),
                                                    child: Text(
                                                        element.toString(),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            bottomsheet_content),
                                                  ),
                                                )),
                                            index1 == index
                                                ? Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      height: 11.08,
                                                      width: 15.59,
                                                      child: Image.asset(
                                                        "assets/tick.png",
                                                      ),
                                                    ))
                                                : SizedBox.shrink()
                                          ]),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Netural_4_Colour,
                                    ),
                                  ],
                                ),
                              ))
                          .toList()),
                ),
              ),
            ));
      },
    );
  }
}

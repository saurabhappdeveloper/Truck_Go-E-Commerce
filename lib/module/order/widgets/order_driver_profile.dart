import 'dart:ui';

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class order_driver_profile extends StatefulWidget {

  @override
  State<order_driver_profile> createState() => _order_driver_profileState();
}

class _order_driver_profileState extends State<order_driver_profile> {
  Set<Marker> _markers = {};
   BitmapDescriptor mapMarker;
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(19.134069, 72.830360),
        icon: mapMarker,
        infoWindow: InfoWindow(title: 'Andheri West', snippet: 'Map'),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  map_widget()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: 
                 GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
           target: LatLng(19.134069, 72.830360),
           zoom: 15,
          ),
        onMapCreated: _onMapCreated,
      ),
                // GoogleMap(
                //   onMapCreated: _onMapCreated,
                //   markers: _markers,
                //   initialCameraPosition: CameraPosition(
                //     target: LatLng(19.134069, 72.830360),
                //     zoom: 15,
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 220, 10, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Netural_5_Colour,
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
                            padding: const EdgeInsets.fromLTRB(16, 0, 0, 19),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: CircleAvatar(
                                    radius: 33.sp,
                                    child: Container(
                                      child: Center(
                                        child: Image.asset(
                                          "assets/profile_pic.png",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 16.0, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/security_officer.png",
                                              height: 16.sp,
                                              width: 16.sp,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      Variable.name,
                                                      style: order_style,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 9),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/side_truck.png",
                                                height: 16.sp,
                                                width: 16.sp,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Text(
                                                        Variable
                                                            .trucks_with_awning,
                                                        style: order_style,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 9),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/ton.png",
                                                height: 16.sp,
                                                width: 16.sp,
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0),
                                                  child: Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Text(
                                                        Variable.Tons,
                                                        style: order_style,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 9,
                                          ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  child: Container(
                                                alignment: Alignment.centerLeft,
                                                child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      Variable.license_plate,
                                                      style:
                                                          License_plate_style,
                                                    )),
                                              )),
                                              Expanded(
                                                // flex: 1,
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          Variable
                                                              .license_plate_no,
                                                          style: order_style,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.topEnd,
                                  child: Container(
                                    height: 40,
                                    width: 56,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(18),
                                          bottomLeft: Radius.circular(12)),
                                      color: Accent_color,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        13,
                                        9,
                                        13,
                                        9,
                                      ),
                                      child: Image.asset(
                                        "assets/tablet.png",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Netural_5_Colour,
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
                              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12.0, top: 10),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                Variable.stepper_title,
                                                style: bottomsheet_title,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 56,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(18),
                                              bottomLeft: Radius.circular(12)),
                                          color: Accent_color,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                            13,
                                            9,
                                            13,
                                            9,
                                          ),
                                          child: Image.asset(
                                            "assets/tablet.png",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  order_Progress(),
                                ],
                              ),
                            ),
                          )),
                      InkWell(
                        onTap: () {
                          _showMyDialog();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14.0, bottom: 14),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Netural_5_Colour,
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
                              padding:
                                  const EdgeInsets.fromLTRB(16, 12, 16, 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Variable.line_item,
                                    style: bottomsheet_title,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/yellow_pointer.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                Variable.location1_title,
                                                style: numberof_vehicle_style,
                                              ),
                                            ),
                                          ),
                                        ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Image.asset(
                                            "assets/end_location.png",
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                        Expanded(
                                            child: Container(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 4.0),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                Variable.location2_title,
                                                style: numberof_vehicle_style,
                                              ),
                                            ),
                                          ),
                                        ))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8.0, bottom: 3),
                                          child: Image.asset(
                                            "assets/white_calendar.png",
                                            height: 20,
                                            width: 20,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 4.0),
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Variable.date,
                                              style: numberof_vehicle_style,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

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
              insetPadding: EdgeInsets.fromLTRB(24, 150, 24, 60),
              contentPadding: EdgeInsets.fromLTRB(15, 20, 15, 15),
              content: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    CircleAvatar(
                      // backgroundColor: Colors.green,
                      radius: 46,
                      child: Container(
                        child: Center(
                          child: Image.asset(
                            "assets/profile_pic.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                        child: Text(
                          Variable.how_is_your_ship,
                          textAlign: TextAlign.center,
                          style: bottomsheet_title,
                        ),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              'assets/blue_pointer.png',
                              height: 16,
                              width: 16,
                            ),
                          ),
                          // Expanded(
                          //   child:
                          Text(
                            Variable.location_alert_subtitle,
                            textAlign: TextAlign.left,
                            style: status_style2,
                          ),
                          // ),
                        ],
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                        child: RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Accent_color,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ));
      },
    );
  }
}


import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class map_design extends StatefulWidget {
  const map_design({Key key}) : super(key: key);

  @override
  State<map_design> createState() => _map_designState();
}

class _map_designState extends State<map_design> {

  //  static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );
  // final Completer<GoogleMapController> _controller =
  //     Completer<GoogleMapController>();
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
    return 
          Container(
            height: MediaQuery.of(context).size.height,
                    child: ListView(
                      children: [
                        Container(
                           width: MediaQuery.of(context).size.width,
                          height: 222,
                          child:  GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
           target: LatLng(19.134069, 72.830360),
           zoom: 15,
          ),
        onMapCreated: _onMapCreated,
      ),
    ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                style: numberof_vehicle_style,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(bottom: 8),
                                  
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Image.asset(
                                      "assets/pen.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      "assets/search_location.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Netural_4_Colour,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: Variable.enter_location,
                                  hintStyle: textform_hint_textstyle,
                                ),
                              )),),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 25, 22),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                style: numberof_vehicle_style,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(bottom: 8),
                                
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      "assets/message.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Netural_4_Colour,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: Variable.detail_address,
                                  hintStyle: textform_hint_textstyle,
                                ),
                              )),),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            Variable.point_contact_person,
                            style: bottomsheet_content,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                style: numberof_vehicle_style,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(bottom: 8),
                                 
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      "assets/person.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Netural_4_Colour,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: Variable.full_name,
                                  hintStyle: textform_hint_textstyle,
                                ),
                              )),),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 0, 25, 25),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(22),
                              child: TextFormField(
                                textAlign: TextAlign.left,
                                style: numberof_vehicle_style,
                                decoration: InputDecoration(
                                  // contentPadding: EdgeInsets.only(bottom: 8),
                                
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      "assets/smartphone1.png",
                                      height: 16,
                                      width: 16,
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Netural_4_Colour,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: Variable.telephone_no,
                                  hintStyle: textform_hint_textstyle,
                                ),
                              )),)
                      ],
                    ),
                  
    );
  }
}
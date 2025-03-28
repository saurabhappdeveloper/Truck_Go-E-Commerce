import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';


class map_widget extends StatefulWidget {

  @override
  State<map_widget> createState() => _map_widgetState();
}

class _map_widgetState extends State<map_widget> {
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
  Set<Marker> _markers = {};
 BitmapDescriptor mapMarker;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child:  
           GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
           target: LatLng(19.134069, 72.830360),
           zoom: 15,
          ),
        onMapCreated: _onMapCreated,
      ),
        //   GoogleMap(
        //   onMapCreated: _onMapCreated,
        //   markers: _markers,
        //   initialCameraPosition: CameraPosition(
        //    target: LatLng(19.134069, 72.830360),
        //    zoom: 15,
        //   ),
       
        // ),
      ),
    );
  }
}
import 'dart:async';
import 'dart:ui';
import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';


class order_map extends StatefulWidget {

  @override
  State<order_map> createState() => _order_mapState();
}

class _order_mapState extends State<order_map> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(children: [
                map_design(),            
                main_app_bar(
                  main_heading: Variable.loading_point_title,
                  onpressed: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
            
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
              child: Container(
                height: 44,
                child: ElevatedButton(
                    onPressed: ()
                    
                     {
                       Navigator.push(
                            context,
                            PageTransition(
                              duration: Duration(milliseconds: 400),
                              reverseDuration: Duration(milliseconds: 400),
                              type: PageTransitionType.rightToLeft,
                              isIos: true,
                              child: picking_point(),
                            ),
                          );
                      // _showMyDialog();
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        Variable.confirm,
                        style: submit_button_style,
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Primary_color),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22.0),
                        )))),
              ),
            )),
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


// ignore_for_file: camel_case_types, prefer_const_constructors, unused_import

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class Notification_widget extends StatelessWidget {
  const Notification_widget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titlePadding: EdgeInsets.fromLTRB(0, 20, 0, 15),
      // contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.fromLTRB(25, 0, 25, 0),
      title: Column(
        children: [
          Center(
              child: Text(
            Variable.Notifications,
            style: titile2_style(color: Netural_1_Colour),
          )),
          SizedBox(
            height: 15,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        Variable.Youcannotupdatethestatus,
                        textAlign: TextAlign.center,
                        style: body2_style(color: Netural_2_Colour),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Netural_4_Colour,
                width: MediaQuery.of(context).size.width * 1,
                height: 1,
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Variable.close,
                      style: titile3_style(color: Primary_color),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

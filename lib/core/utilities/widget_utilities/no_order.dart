// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';


class no_order extends StatefulWidget {
  const no_order({Key key}) : super(key: key);

  @override
  State<no_order> createState() => _no_orderState();
}

class _no_orderState extends State<no_order> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Image.asset(
            AppIconImages.noorder_page,
            // 'assets/images/no_order_img.png',
            height: 211,
            width: 256,
          ),
          SizedBox(
            height: 34,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(Variable.YouhavenoordersCreateOrdernow,
                textAlign: TextAlign.center, style: Youhavenoorders_style),
          ),
        ],
      )),
    );
  }
}

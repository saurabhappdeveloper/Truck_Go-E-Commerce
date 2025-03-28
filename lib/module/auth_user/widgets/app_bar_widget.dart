// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:truckgo_project/core/core.dart';

class Appbar_widget extends StatelessWidget {
  final String title;

  Appbar_widget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          InkWell(
            onTap: () {
            
              Get.back();
            },
            child: Image.asset(
              'assets/Leftarrow.png',
              height: 18,
              width: 18,
            ),
          ),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: titile3_style(color: Netural_1_Colour),
            ),
          )
        ],
      ),
    );
  }
}

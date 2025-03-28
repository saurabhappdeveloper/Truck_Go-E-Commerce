// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:truckgo_project/core/core.dart';
// ignore: unused_import
import 'package:truckgo_project/module/module.dart';

class Order2cardwidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const Order2cardwidget({Key key, this.title, this.subtitle, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: body3_style(color: Netural_2_Colour),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 30,
              child: TextField(
                onTap: onTap,
                decoration: InputDecoration(
                  hintText: subtitle,
                  hintStyle: body2_style(color: Netural_1_Colour),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Netural_4_Colour),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Netural_4_Colour),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            )
          ],
        ));
  }
}

List<Order2cardwidget> order2card_list = [
  Order2cardwidget(
    title: Variable.Typeoftruck,
    subtitle: Variable.Truckswithawnings,
  ),
  Order2cardwidget(
    title: Variable.Numberofvehicles,
    subtitle: Variable.one,
  ),
  Order2cardwidget(
    title: Variable.Typeofcontract,
    subtitle: Variable.Completecar,
  ),
];

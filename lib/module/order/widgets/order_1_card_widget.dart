// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, non_constant_identifier_names

import 'package:truckgo_project/core/core.dart';
// ignore: unused_import
import 'package:truckgo_project/module/module.dart';

class Order1cardwidget extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  const Order1cardwidget({Key key, this.img, this.title, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:3),
                    child: Image.asset(
                      img,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: body4_style(color: Primary_color),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: body2_style(color: Netural_1_Colour),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
       
      ],
    );
  }
}

class order1List {
  final String img;
  final String title;
  final String subtitle;

  order1List({this.img, this.title, this.subtitle});
}

List<order1List> order1card_list = [
  order1List(
      img: 'assets/calendar.png',
      title: Variable.loadingtime,
      subtitle: Variable.datetime),
  order1List(
      img: 'assets/searchcontent.png',
      title: Variable.sectors,
      subtitle: Variable.Vegetable),
  order1List(
      img: 'assets/weightscale.png',
      title: Variable.volumeofgoods,
      subtitle: Variable.tone),
  order1List(
      img: 'assets/box.png',
      title: Variable.rowsize,
      subtitle: Variable.rowsizein_num),
];

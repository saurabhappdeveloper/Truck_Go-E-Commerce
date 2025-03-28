// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:truckgo_project/core/core.dart';
// ignore: unused_import
import 'package:truckgo_project/module/module.dart';

class viewcar_bottomsheet extends StatefulWidget {
  const viewcar_bottomsheet({
    Key key,
  }) : super(key: key);

  @override
  State<viewcar_bottomsheet> createState() => _viewcar_bottomsheetState();
}

class _viewcar_bottomsheetState extends State<viewcar_bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                width: 80,
                height: 5,
                decoration: BoxDecoration(
                    color: Netural_3_Colour,
                    borderRadius: BorderRadius.circular(20)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
              children: viewcarlist
                  .mapIndexed(
                    (index, e) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Container(
                                  // width: 200,
                                  decoration: BoxDecoration(
                                    color: e['color'],
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  height: 77,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 82),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                e['title'].toString(),
                                                style: e['titlestyle'],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5),
                                                    child: Image.asset(
                                                      e['tagimg'],
                                                      // 'assets/tag.png',
                                                      height: 14,
                                                      width: 14,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    e['subtitle'].toString(),
                                                    style: e['subtitlestyle'],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // child:
                                ),
                              ),
                              Positioned(
                                  top: 1,
                                  // right: -20,
                                  left: -20,
                                  bottom: 1,
                                  child: Container(
                                    // color: Colors.red,
                                    child: Image.asset(
                                      'assets/truck2.png',
                                      height: 150,
                                      width: 170,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                  .toList()),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    // width: 200,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    // height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 82, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    Variable.CarContCartires,
                                    style: body3_style(color: Netural_1_Colour),
                                  ),
                                ),
                                // SizedBox(
                                //   height: 5,
                                // ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    Variable.Length12mxWidth2mxHeight,
                                    style:
                                        caption1_style(color: Netural_2_Colour),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // child:
                  ),
                ),
                Positioned(
                    top: 1,
                    // right: -20,
                    left: -20,
                    bottom: 1,
                    child: Container(
                      // color: Colors.red,
                      child: Image.asset(
                        'assets/truck2.png',
                        height: 150,
                        width: 170,
                      ),
                    )),
                Positioned(
                    // top: 50,
                    right: 30,
                    // left: -20,
                    bottom: -18,
                    child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: shadow_1
                            
                            ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              Variable.Chooseaboxtype,
                              style: body2_style(color: Primary_color),
                            ),
                          ),
                        )))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

List viewcarlist = [
  {
    'img': 'assets/truck2.png',
    'title': Variable.Truckswithawnings,
    'titlestyle': body3_style(color: Netural_5_Colour),
    'subtitle': Variable.two59,
    'subtitlestyle': body1_style(color: Netural_5_Colour),
    'color': Primary_color,
    'tagimg': 'assets/tag.png'
  },
  {
    'img': 'assets/truck2.png',
    'title': Variable.Truckswithawnings,
    'titlestyle': body3_style(color: Netural_1_Colour),
    'subtitle': Variable.two59,
    'subtitlestyle': body1_style(color: Primary_color),
    'color': Netural_4_Colour,
    'tagimg': 'assets/graytag.png'
  }
];



  // Positioned(
                //     // top: 50,
                //     right: 30,
                //     // left: -20,
                //     bottom: -18,
                //     child: Container(
                //         alignment: Alignment.center,
                //         height: 35,
                //         decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(18)),
                //         child: Padding(
                //           padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                //           child: Text(
                //             'Choose a box type',
                //             style: TextStyle(
                //                 color: Color(0xff4964D8),
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.w400),
                //           ),
                //         )))
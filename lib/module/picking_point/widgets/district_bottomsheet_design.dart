import 'package:truckgo_project/module/module.dart';

import '../../../core/core.dart';

GetStorage storage = GetStorage();

class district_bottomsheet_design extends StatefulWidget {
  final ScrollController controller;

  const district_bottomsheet_design({Key key,  this.controller})
      : super(key: key);

  @override
  State<district_bottomsheet_design> createState() =>
      _district_bottomsheet_designState();
}

class _district_bottomsheet_designState
    extends State<district_bottomsheet_design> {
  List district_array = [
    "Los Angelas",
    "Las Vegas",
    "Virar",
    "Bhayandar",
    "Kandivali",
    "Los Angelas",
    "Las Vegas",
    "Virar",
    "Bhayandar",
    "Kandivali",
    "Los Angelas",
    "Las Vegas",
    "Virar",
    "Bhayandar",
    "Kandivali",
    "Los Angelas",
    "Las Vegas",
    "Virar",
    "Bhayandar",
    "Kandivali"
  ];
  int selected_index;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child:ListView(
              controller: widget.controller,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
                  child: Column(
                      children: district_array
                          .mapIndexed((index, element) => InkWell(
                            onTap: (){
                              setState(() {
                                selected_index = index;
                                district_controller.text = element;
                                storage.write("selected_index", selected_index);
                                Navigator.pop(context);
                              });
                            },
                            child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0,bottom: 5),
                                      child: Row(children: [
                                        Expanded(
                                            flex: 4,
                                            child: Container(
                                              // color: Colors.red,
                                              child: Text(
                                                element.toString(),
                                                  textAlign: TextAlign.start,
                                                  style: bottomsheet_selected_style(
                                                    color:
                                                    storage.read("selected_index")
                                                      == index?
                                                       Netural_1_Colour:
                                                      Netural_2_Colour,
                                                      fontfamily: 
                                                       storage.read("selected_index") == index?
                                                       "Avenir_Heavy":
                                                       "Avenir_Medium"
                                                     )
                                                 
                                                      ),
                                            )),
                                            storage.read("selected_index") == index?
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              height: 16,
                                              width: 16,
                                              child: Image.asset(
                                                "assets/tick.png",
                                              ),
                                            )):
                                            SizedBox.shrink()
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:8.0),
                                      child: Divider(
                                        thickness: 1,
                                        color: Netural_4_Colour,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 15,
                                    // ),
                                  ],
                                ),
                          ))
                          .toList()),
                ),
              ],
            ),
        ),
      ],
    );
  }
}

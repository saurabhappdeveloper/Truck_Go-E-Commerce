import 'package:truckgo_project/core/core.dart';

class truck_image_widget extends StatefulWidget {
  final List image_details_array;

  const truck_image_widget({Key key,  this.image_details_array})
      : super(key: key);
  @override
  State<truck_image_widget> createState() => _truck_image_widgetState();
}

class _truck_image_widgetState extends State<truck_image_widget> {
  int on_selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              //     scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              children: widget.image_details_array
                  .mapIndexed((index, element) => InkWell(
                        onTap: () {
                          setState(() {
                            on_selected = index;
                          });
                        },
                        child: Stack(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 15, right: 20),
                            child: Container(
                              width: 222,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: on_selected == index
                                      ? Primary_color
                                      : Netural_4_Colour),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 20, 15, 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                              width: 24,
                                              height: 24,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: on_selected == index
                                                      ? Netural_5_Colour
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100)),
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 6.0),
                                                  child: on_selected == index
                                                      ? Image.asset(
                                                          "assets/arrow_right_blue.png",
                                                          height: 18,
                                                          width: 18,
                                                        )
                                                      : SizedBox.shrink()))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        // const EdgeInsets.fromLTRB(15, 48, 8, 6),
                                        const EdgeInsets.fromLTRB(
                                            15, 30, 15, 2),
                                    child: Text(element["truck_name"],
                                        style: truck_name_style(
                                            color: on_selected == index
                                                ? Netural_5_Colour
                                                : Netural_1_Colour)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        15, 2, 30, 15),
                                    child: Text(
                                      element["truck_desc"],
                                      style: truck_desc_style(
                                          color: on_selected == index
                                              ? Netural_5_Colour
                                              : Netural_2_Colour),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment:
                                  AlignmentDirectional(0, -5), // <-- SEE HERE
                              child: Container(
                                height: 77,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            element["truck_image"].toString())),
                                    boxShadow: [
                                      BoxShadow(
                                        // color: Colors.black.withOpacity(0.05),
                                        color: shadow_color,
                                        blurRadius: 40,
                                        spreadRadius: 0,
                                        offset: Offset(0, 4),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ]),
                      ))
                  .toList()),
        ))
      ],
    );
  }
}

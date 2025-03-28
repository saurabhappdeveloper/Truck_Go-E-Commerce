import '../../../core/core.dart';

TextEditingController length = TextEditingController();
TextEditingController width = TextEditingController();
TextEditingController height = TextEditingController();
bool lengthm = false;
bool widthm = false;
bool heightm = false;

class row_size_bottomsheet extends StatefulWidget {
  final ScrollController controller;

  const row_size_bottomsheet({Key key,  this.controller})
      : super(key: key);

  @override
  State<row_size_bottomsheet> createState() => _row_size_bottomsheetState();
}

class _row_size_bottomsheetState extends State<row_size_bottomsheet> {
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   child:
        Padding(
      padding: const EdgeInsets.fromLTRB(18, 25, 18, 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      Variable.row_size,
                      textAlign: TextAlign.left,
                      style: bottomsheet_content,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        Variable.what_does_it_mean,
                        style: distinguish_car_style,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Netural_4_Colour),
                    child: TextFormField(
                      controller: length,
                      keyboardType: TextInputType.number,
                      // focusNode: FocusNode(canRequestFocus: true),
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(left: 18, bottom: 5, right: 18),
                          hintText: Variable.length,
                          hintStyle: row_bottomsheet_content_style),
                      onChanged: (value) {
                        setState(() {
                          if (int.parse(value) > 14.9) {
                            lengthm = true;
                            return;
                          }
                          lengthm = false;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    // width: 40,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Netural_4_Colour),
                    // color: Colors.yellow,

                    child: TextFormField(
                      controller: width,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding:
                              EdgeInsets.only(left: 18, bottom: 5, right: 18),
                          hintText: Variable.width,
                          hintStyle: row_bottomsheet_content_style),
                      onChanged: (value) {
                        setState(() {
                          if (int.parse(value) > 14.9) {
                            widthm = true;
                            return;
                          }
                          widthm = false;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    // color: Colors.green,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Netural_4_Colour),
                    // width: 40,
                    child: TextFormField(
                      controller: height,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 18, bottom: 5, right: 18),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: Variable.height,
                          hintStyle: row_bottomsheet_content_style),
                      onChanged: (value) {
                        setState(() {
                          if (int.parse(value) > 14.9) {
                            heightm = true;
                            return;
                          }
                          heightm = false;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    // width: ,
                    child: Text(Variable.textformfield_errro_message,
                        style: textformfield_error_style(
                            lengthm ? Sementic_1_Colour : Colors.transparent)),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    // width: ,
                    child: Text(Variable.textformfield_errro_message,
                        style: textformfield_error_style(
                            widthm ? Sementic_1_Colour : Colors.transparent)),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                  child: Container(
                    // width: ,
                    child: Text(Variable.textformfield_errro_message,
                        style: textformfield_error_style(
                            heightm ? Sementic_1_Colour : Colors.transparent)),
                  ),
                ),
              ],
            ),
          ),
        
          Expanded(

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // color: Netural_5_Colour,
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        Variable.cancel,
                        style: TextStyle(color: Primary_color),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 42,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Primary_color,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        Variable.confirm,
                        style: TextStyle(
                          color: Netural_5_Colour,
                        ),
                      )),
                ))
              ],
            ),
          ),
          // )
        ],
      ),
      // ),
    );
  }
}

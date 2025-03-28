import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';

class car_cont_widgets extends StatelessWidget {
  final String line1;
  final String line2;
  final String amount;
  const car_cont_widgets({Key key, this.line1, this.line2, this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(boxShadow: [
     BoxShadow(
    color: Color(0x0D000000),
    blurRadius: 40,
    spreadRadius: 0,
    offset: Offset(0, 4),
),
        ], color: Netural_5_Colour, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              line1,
              // "28.0 Tons - Cont 40'",
              style: car_cont_title_heading
            ),
            SizedBox(height: 6),
            Text(line2,
                // "Length 12.0m x Weight 2.3m x Height 2.3m",
                style: car_cont_title_heading2),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                 AppIconImages.Tag,
                  height: 17,
                  width: 17,
                ),
                SizedBox(width: 10),
                Text(amount,
                    // "245.80",
                    style: TextStyle(
                        fontSize: 18,
                        color: Primary_color,
                       fontFamily: "Avenir_Heavy",

                        )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/dashboard/widgets/home_card_widget.dart';

class running_page extends StatefulWidget {
  const running_page({Key key}) : super(key: key);

  @override
  State<running_page> createState() => _running_pageState();
}

class _running_pageState extends State<running_page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          home_card_widgets(),
                    SizedBox(height: 20),

          home_card_widgets(),
                    SizedBox(height: 20),

          home_card_widgets(),
                    SizedBox(height: 20),

        ],
      ),
    );
  }
}

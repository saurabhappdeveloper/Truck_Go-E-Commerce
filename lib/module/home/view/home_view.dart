// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';

class Homeview extends StatefulWidget {
  const Homeview({Key key}) : super(key: key);

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: home_background,
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              // You can style this container to achieve the desired tab look
              child: TabBar(
                labelColor: Color(0xff4964D8),
                unselectedLabelColor: Color(0xffA8A8A8),
                indicatorColor: Color(0xff4964D8),
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.symmetric(vertical: 5),
                tabs: [Text("New menu"), Text("Running"), Text("Passad")],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Widgets for Tab 1 content
                  Center(child: Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Image.asset('assets/no_order_img.png',height: 211,width: 256,),
                      SizedBox(
                        height: 34,
                      ),
                      Text('You have no orders! Create Order now'),
                    ],
                  )),

                  // Widgets for Tab 2 content
                  Center(child: Text('Running')),

                  // Widgets for Tab 3 content
                  Center(child: Text('Passad')),
                ],
              ),
            ),
          ],
        ),
      ),
    );

   
  }
}

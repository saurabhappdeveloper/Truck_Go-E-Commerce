// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/utilities/widget_utilities/no_order.dart';
import 'package:truckgo_project/module/dashboard/views/running_page.dart';
import '../../../core/core.dart';

dynamic tabbarview_value;
TabController _tabController;

final List<Tab> myTabs = <Tab>[
  Tab(text: Variable.NewMenu), 
  Tab(text: Variable.Running),
  Tab(text: Variable.Passad),
];

class dashboard extends StatefulWidget {
  const dashboard({Key key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _tabController.addListener(() {
      setState(() {
        print(_tabController.index);
        tabbarview_value = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length, // Number of tabs
      child: Scaffold(
        backgroundColor: Netural_5_Colour,
        body: Column(
          children: [
            Container(
              child: TabBar(
                controller: _tabController,

                labelColor: Primary_color,
                unselectedLabelColor: Netural_2_Colour,
                indicatorColor: Primary_color,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: tabbarview_style,
                indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(horizontal: -10.0),
                    borderSide: BorderSide(color: Primary_color, width: 2)),
                // indicatorPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),

                tabs: myTabs,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  no_order(),
                  running_page(),
                  running_page(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class order_map_driver_profile extends StatefulWidget {
  @override
  State<order_map_driver_profile> createState() =>
      _order_map_driver_profileState();
}

class _order_map_driver_profileState extends State<order_map_driver_profile>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    new Tab(
      child: FittedBox(  
        fit: BoxFit.scaleDown,
        child: Text(
          Variable.tab1_title,
          style: tab_button_style,
        ),
      ),
    ),
    new Tab(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          Variable.tab2_title,
          style: tab_button_style,
        ),
      ),
    ),
  ];

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _tabController,
                    children: myTabs.map((Tab tab) {
                      return new Center(child: order_driver_profile());
                    }).toList(),
                  ),
                ),
                main_app_bar(
                  main_heading: Variable.order_heading,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                    indicatorColor: Accent_color,
                    controller: _tabController,
                    indicatorWeight: 2,
                    tabs: myTabs,
                  ),
                  onpressed: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

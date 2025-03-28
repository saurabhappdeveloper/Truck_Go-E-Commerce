// ignore_for_file: prefer_const_constructors, missing_required_param, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/main_app_bar.dart';
import 'package:truckgo_project/core/utilities/widget_utilities/my_icons.dart';
import 'package:truckgo_project/module/Endow/views/endows.dart';
import 'package:truckgo_project/module/business_information/views/business_information_page.dart';
import 'package:truckgo_project/module/dashboard/views/main_dashboard.dart';
import 'package:truckgo_project/module/notification/views/notification_page.dart';
import 'package:truckgo_project/module/order_infromation/views/order_information.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({Key key}) : super(key: key);

  @override
  _MainscreenState createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _currentIndex =
      0; //Current selected index of the bottom navigation bar tab

  void changeTab(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    //List of Screens that you want to put
    final screens = [
      const dashboard(),
      const Notification_page(),
      const order_informationState(),
      const endow_page(),
      const business_information(),
    ];

    final heading = [
      main_app_bar(
        main_heading: Variable.Home,
      ),
      main_app_bar(
        main_heading: Variable.Notification,
      ),
      main_app_bar(
        main_heading: "",
      ),
      main_app_bar(
        main_heading: Variable.Endow,
      ),
      main_app_bar(
        main_heading: Variable.Account,
      ),
    ];

    return Scaffold(
      backgroundColor: Netural_5_Colour,
      body: SafeArea(
        child: Stack(
          children: [
            IndexedStack(
              index: _currentIndex,
              children: heading,
            ),
            Padding(
              padding: EdgeInsets.only(top: 90),
              child: IndexedStack(
                index: _currentIndex,
                children: screens,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            PageTransition(
              duration: Duration(milliseconds: 400),
              reverseDuration: Duration(milliseconds: 400),
              type: PageTransitionType.rightToLeft,
              isIos: true,
              child: order_informationState(),
            ),
          );
        },
        backgroundColor: Primary_color,
        // onPressed: _pushAddTodoScreen,
        tooltip: '',
        child: Image.asset(
          AppIconImages.Add,
          width: 30,
          height: 30,
        ),
        // Icon(
        //   Icons.add,
        //   size: 30,
        // ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) => changeTab(index),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Netural_3_Colour,
        selectedItemColor: Primary_color,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/home.png"),
              size: 23,
            ),
            label: 'Screen1',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/alarm.png"),
              size: 23,
            ),
            label: 'Screen2',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dark_mode_outlined,
                color: Colors.transparent,
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/tab_bar.png"),
              size: 23,
            ),
            label: 'Screen3',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/person_tabbar.png"),
              size: 23,
            ),
            label: 'Screen3',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

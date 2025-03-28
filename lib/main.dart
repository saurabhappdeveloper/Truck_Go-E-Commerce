import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/main_screen/views/main_screen_page.dart';
import 'package:truckgo_project/module/module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Get.isLogEnable) Get.isLogEnable = true;
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backwardsCompatibility: false, // 1
            systemOverlayStyle: SystemUiOverlayStyle.light, // 2
          ),
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: RoutesApp.signup,
        // getPages: RoutesApp.routes,

        home: Mainscreen(),
      );
    });
  }
}

// class showdow extends StatefulWidget {
//   const showdow({Key key}) : super(key: key);

//   @override
//   State<showdow> createState() => _showdowState();
// }

// class _showdowState extends State<showdow> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Column(
//           children: [
//             SizedBox(height: 20),
//             Container(
//                 height: 50,
//                 width: 50,
//                 alignment: Alignment.bottomRight,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0x000000).withOpacity(1),
//                       offset: Offset(50, -50),
//                       blurRadius: 44,
//                       spreadRadius: 11,
//                     )
//                   ],
//                 ),
//               ),
          
//           ],
//         ));
//   }
// }

import 'package:truckgo_project/core/core.dart';

class main_app_bar extends StatefulWidget {
  final String main_heading;
  final VoidCallback onpressed;
  final Widget child;

  const main_app_bar({Key key, this.main_heading, this.onpressed,this.child})
      : super(key: key);

  @override
  State<main_app_bar> createState() => _main_app_barState();
}

class _main_app_barState extends State<main_app_bar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Primary_color,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          width: MediaQuery.of(context).size.width * 1,
          // height:90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    flex: 0,
                    child: InkWell(
                      onTap: () {
                        // Navigator.pop(context);
                        Get.back();
                      
                       
                      },
                      child: Container(
                        height: 35,
                        width: 50,
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/whiteLeftarrow.png',
                            height: 18,
                            width: 18,
                          )
                          // IconButton(
                          //   icon: Icon(
                          //     Icons.arrow_back_ios_outlined,
                          //     color: Colors.white,
                          //     size: 18,
                          //   ),
                          //   onPressed: widget.onpressed,
                          // ),
                          ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        widget.main_heading,
                        style: titile3_style(color: Colors.white),
                      ),
                    ),
                  ))
                ],
              ),
              widget.child != null?
                SizedBox(height: 10,):SizedBox.shrink(),
             Container(
              child: widget.child != null?widget.child:Padding(
                padding: const EdgeInsets.only(bottom:30.0),
                child: SizedBox.shrink(),
              ),
             )
            ],
          ),
        )
      ],
    );
  }
}


// // ignore_for_file: prefer_const_constructors
// import 'package:truckgo_project/core/core.dart';

// class main_app_bar extends StatefulWidget {
// final String main_heading;
// final VoidCallback onpressed;
// final Widget child;


//   const main_app_bar({Key key,  this.main_heading,  this.onpressed,  this.child }) : super(key: key);


// @override
// State<main_app_bar> createState() => _main_app_barState();
// }

// class _main_app_barState extends State<main_app_bar> {
// @override
// Widget build(BuildContext context) {
//     return Column(
//      mainAxisAlignment: MainAxisAlignment.start,
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: [
//         Container(
//          decoration: BoxDecoration(
//              color: Primary_color,
//              borderRadius: BorderRadius.only(
//                  bottomLeft: Radius.circular(40),
//                  bottomRight: Radius.circular(40))),
//          width: MediaQuery.of(context).size.width * 1,
//         //  height: 90,
//          child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//              SizedBox(height: 25),
//              Row(
//                 children: [
//                  Expanded(
//                     flex: 0,
//                     child: Container(
//                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                      alignment: Alignment.centerLeft,
//                      child: IconButton(
//                         icon: Icon(
//                          Icons.arrow_back_ios_outlined,
//                          color: Colors.white,
//                          size: 18,
//                         ),
//                         onPressed: widget.onpressed,
//                      ),
//                     ),
//                  ),
//                  Expanded(
//                      child: Container(
//                     alignment: Alignment.center,
//                     child: Padding(
//                      padding: EdgeInsets.only(right: 40),
//                      child: Text(
//                         widget.main_heading,
//                         style: Main_heading_title,
//                      ),
//                     ),
//                  ))
//                 ],
//              ),
//              SizedBox(height: 10,),
//              Container(
//               child: widget.child != null?widget.child:SizedBox.shrink(),
//              )
             
//                         ],
//          ),
//         )
//      ],
//     );
// }
// }
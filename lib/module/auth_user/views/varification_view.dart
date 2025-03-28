// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/main_screen/views/main_screen_page.dart';
import 'package:truckgo_project/module/module.dart';

class VarificationView extends StatefulWidget {
  const VarificationView({Key key}) : super(key: key);

  @override
  State<VarificationView> createState() => _VarificationViewState();
}

class _VarificationViewState extends State<VarificationView> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  StreamController<ErrorAnimationType> errorController;
  TextEditingController otpController = TextEditingController();
  GetStorage storage = GetStorage();
  final interval = const Duration(seconds: 1);
  bool isotpenter = false;

  final int timerMaxSeconds = 90;

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        print(timer.tick);
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) timer.cancel();
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Appbar_widget(
                        title: Variable.varification,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadow_1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Variable.enterthevarificationcode,
                                      style:
                                          body4_style(color: Netural_1_Colour),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          Variable.indiacode,
                                          style:
                                              body3_style(color: Primary_color),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          storage.read('phonenum').toString(),
                                          style:
                                              body3_style(color: Primary_color),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      PinCodeTextField(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        // backgroundColor: Color(0xfff1f5f6),

                                        appContext: context,
                                        pastedTextStyle: TextStyle(
                                          color: Colors.green.shade600,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        length: 4,
                                        // obscureText: true,
                                        // obscuringCharacter: '*',
                                        // obscuringWidget: FlutterLogo(
                                        //   size: 24,
                                        // ),
                                        blinkWhenObscuring: true,
                                        animationType: AnimationType.fade,
                                        // validator: (v) {
                                        //   if (v.length < 3) {
                                        //     return "I'm from validator";
                                        //   } else {
                                        //     return null;
                                        //   }
                                        // },
                                        pinTheme: PinTheme(
                                          // fieldOuterPadding:
                                          //     EdgeInsets.fromLTRB(15, 0, 15, 0),
                                          shape: PinCodeFieldShape.box,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          fieldHeight: 46,
                                          fieldWidth: 43,
                                          inactiveColor:
                                              Color(0xffF2F2F2), // bordercolor
                                          selectedColor: Color(0xffF2F2F2),
                                          inactiveFillColor: Color(0xffF2F2F2),
                                          selectedFillColor: Color(0xffF2F2F2),
                                          activeColor: Color(0xffF2F2F2),
                                          activeFillColor: Color(0xffF2F2F2),

                                          // hasError ? Colors.blue.shade100 : Colors.white,
                                        ),
                                        cursorHeight: 28,
                                        cursorWidth: 1,
                                        cursorColor: Primary_color,
                                        animationDuration:
                                            Duration(milliseconds: 300),
                                        enableActiveFill: true,

                                        errorAnimationController:
                                            errorController,
                                        controller: otpController,
                                        keyboardType: TextInputType.number,
                                        // boxShadows: [
                                        //   BoxShadow(
                                        //     offset: Offset(0, 1),
                                        //     color: Colors.black12,
                                        //     blurRadius: 10,
                                        //   )
                                        // ],
                                        onCompleted: (v) {
                                          if (otpController.text.length == 4) {
                                            setState(() {
                                              isotpenter = false;
                                            });
                                          }
                                        },
                                        // onTap: () {
                                        //   print("Pressed");
                                        // },
                                        onChanged: (value) {
                                          //  if(otpController.text.length <4){
                                          //   setState(() {
                                          //     isotpenter = true;
                                          //   });
                                          //  }
                                          // else{
                                          //     setState(() {
                                          //     isotpenter = true;
                                          //   });
                                          // }
                                        },
                                        beforeTextPaste: (text) {
                                          print("Allowing to paste $text");
                                          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                          //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                          return true;
                                        },
                                      ),
                                      // SizedBox(height: 5,),
                                      isotpenter == true
                                          ? Text(
                                              Variable.pleaseEnterthevalidotp,
                                              style: normalRedStyle,
                                            )
                                          : Container(),
                                      SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  )),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide.none,
                                                borderRadius:
                                                    BorderRadius.circular(22)),
                                            minimumSize: const Size(317, 46),
                                            primary:
                                                otpController.text.length == 4
                                                    ? Primary_color
                                                    : Netural_4_Colour),
                                        onPressed: () async {
                                          // Future.delayed(
                                          //     const Duration(seconds: 1), () {
                                          //   setState(() {
                                          //     // isLoading = false;
                                          //   });
                                          // });
                                          if (otpController.text.length < 4) {
                                            setState(() {
                                              isotpenter = true;
                                            });
                                          } else {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                duration:
                                                    Duration(milliseconds: 400),
                                                reverseDuration:
                                                    Duration(milliseconds: 400),
                                                type: PageTransitionType
                                                    .rightToLeft,
                                                isIos: true,
                                                child: Mainscreen(),
                                              ),
                                            );

                                            //                                            Navigator.push(
                                            //   context,
                                            //   MaterialPageRoute(builder: (context) =>  Mainscreen()),
                                            // );
                                            // Get.toNamed(RoutesApp.order1view);
                                          }
                                        },
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Text(
                                            Variable.Continue,
                                            style: body2_style(
                                                color:
                                                    otpController.text.length ==
                                                            4
                                                        ? Netural_5_Colour
                                                        : Netural_2_Colour),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Row(
                                        children: [
                                          Text(
                                            Variable
                                                .requestanewvarificationcode,
                                            textAlign: TextAlign.center,
                                            style: caption1_style(
                                                color: Netural_2_Colour),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            timerText,
                                            textAlign: TextAlign.center,
                                            style: caption1_style(
                                                color: Netural_2_Colour),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 26,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Variable.resendvarificationcode,
                      style: body3_style(color: Accent_color),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

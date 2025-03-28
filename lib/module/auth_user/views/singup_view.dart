// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

final TextEditingController mobile = TextEditingController();

class Singup extends StatefulWidget {
  const Singup({Key key}) : super(key: key);

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();
  bool isMobileFirstClicked = false;
  bool isMobileClicked = false;
  var mobileCurrent = '';
  GetStorage storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Appbar_widget(
                  title: Variable.sign_in,
                ),
                SizedBox(
                  height: 35,
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
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Text(Variable.telephone_num,
                              style: body3_style(color: Netural_2_Colour)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 44,
                                child: IntlPhoneField(
                                    controller: mobile,
                                    textAlign: TextAlign.left,
                                    // textAlignVertical: TextAlignVertical.,
                                    autovalidateMode: AutovalidateMode.disabled,
                                    flagsButtonPadding:
                                        const EdgeInsets.fromLTRB(15, 0, 10, 0),
                                    dropdownIconPosition: IconPosition.trailing,
                                    showCursor: true,
                                    showCountryFlag: true,
                                    dropdownTextStyle:
                                        body1_style(color: Primary_color),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                        fillColor: Color(0xffF2F2F2),
                                        filled: true,
                                        hintText: Variable.enter_phone_num,
                                        hintStyle: body3_style(
                                            color: Netural_3_Colour),
                                        counterText: '',
                                        contentPadding:
                                            EdgeInsets.only(top: 10, left: 30)),
                                    initialCountryCode: 'IN',
                                    onChanged: (value) {
                                      if (value.number.isNotEmpty) {
                                        isMobileFirstClicked = false;
                                      }
                                      isMobileClicked = true;
                                      mobileCurrent = value.number;
                                      setState(() {});
                                    },
                                    keyboardType: TextInputType.number,
                                    inputFormatters:
                                        ValidationHelper.inputValidator(
                                            ValidationHelper.mobile)),
                              ),
                              ValidationWidget(
                                  isWidthStart: false,
                                  isClicked: isMobileFirstClicked,
                                  validationType: ValidationHelper.mobile,
                                  isShow: isMobileClicked == false,
                                  valueInput: mobileCurrent),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Text(
                            Variable.we_will_send,
                            style: caption2_style(color: Netural_1_Colour),
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
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
                                      primary: mobile.text.length == 10
                                          ? Primary_color
                                          : Netural_4_Colour),
                                  onPressed: () async {
                                    if (ValidationHelper.checkValidation(
                                        first: mobile.text.trim(),
                                        type: ValidationHelper.mobile)) {
                                      isMobileFirstClicked = true;
                                    } else {
                                      storage.write('phonenum', mobile.text);

                                      Navigator.push(
                                        context,
                                        PageTransition(
                                          duration: Duration(milliseconds: 400),
                                          reverseDuration:
                                              Duration(milliseconds: 400),
                                          type: PageTransitionType.rightToLeft,
                                          isIos: true,
                                          child: VarificationView(),
                                        ),
                                      );
                                      // Get.toNamed(RoutesApp.varification);
                                    }
                                    setState(() {});
                                    // Get.toNamed(RoutesApp.varification);
                                    // Future.delayed(const Duration(seconds: 1), () {
                                    //   setState(() {
                                    //     // isLoading = false;
                                    //   });
                                    // });
                                  },
                                  child: Text(
                                    Variable.Continue,
                                    style: body2_style(
                                        color: mobile.text.length == 10
                                            ? Netural_5_Colour
                                            : Netural_2_Colour),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

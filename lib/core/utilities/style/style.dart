// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:truckgo_project/core/core.dart';

//common styles

TextStyle titile1_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Heavy', fontSize: 24.0, color: color);

TextStyle titile2_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Heavy', fontSize: 20, color: color);

TextStyle titile3_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Medium', fontSize: 20, color: color);

TextStyle body1_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Heavy', fontSize: 16, color: color);

TextStyle body2_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Medium', fontSize: 16, color: color);

TextStyle body3_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Heavy', fontSize: 14, color: color);

TextStyle body4_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Medium', fontSize: 14, color: color);

TextStyle caption1_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Heavy', fontSize: 12, color: color);

TextStyle caption2_style({Color color}) =>
    TextStyle(fontFamily: 'Avenir_Medium', fontSize: 12, color: color);
final normalRedStyle = normalRubikSize(color: Color(0xffde350b), fontSize: 14);
TextStyle normalRubikSize({double fontSize, Color color}) => fontRubikSize(
    fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
TextStyle fontRubikSize(
        {double fontSize, Color color, FontWeight fontWeight}) =>
    TextStyle(
        fontFamily: 'Rubik',
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: FontStyle.normal,
        letterSpacing: 0);

List<BoxShadow> shadow_1 = [
  BoxShadow(
    // color: Colors.black.withOpacity(0.05),
    color: Color(0x0D000000),
    blurRadius: 40,
    spreadRadius: 0,
    offset: Offset(0, 4),
  ),
];

List<BoxShadow> shadow_2 = [
  BoxShadow(
    color: Colors.black.withOpacity(0.1),
    blurRadius: 40,
    spreadRadius: 0,
    offset: Offset(0, 5),
  ),
];

// TextStyle normalHelveticaSize({double fontSize, Color color}) =>
//     fontHelveticaSize(
//         fontSize: fontSize, color: color, fontWeight: FontWeight.w400);
// TextStyle fontHelveticaSize(
//         {double fontSize, Color color, FontWeight fontWeight}) =>
//     TextStyle(
//         fontFamily: 'HelveticaNowText',
//         color: color,
//         fontSize: fontSize,
//         fontWeight: fontWeight,
//         fontStyle: FontStyle.normal,
//         letterSpacing: 0);
//auth_user > sign_in

final sign_in_style = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: Colors.black,
);

final telephone_num_style = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 15,
  color: Color(0xffA8A8A8),
);

final enter_phone_num_style = TextStyle(
    color: Color(0xffCACACA), fontSize: 16, fontWeight: FontWeight.w500);

final flag_num_style = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff4964D8));

final we_will_send_style = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 13, color: Color(0xff343434));

final Continue_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));

// varification

final varification_style = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: Color(0xff343434),
);
final enterthevarificationcode_style = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 15,
  color: Color(0xff343434),
);
final codewith_phone_num_style = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 15,
  color: Color(0xff4964D8),
);
final varification_continue_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));
final requestanewvarificationcode_style = TextStyle(
    fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));
final resendvarificationcode_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFFAF2A));

//order1view style

final status_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));
final cancel_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFF4267));
final addressoforder_style = TextStyle(fontSize: 14, color: Color(0xffA8A8A8));

final LosAngelesCaniforniaUSA_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff343434));
final PushPuttichaiPush_style =
    TextStyle(fontSize: 14, color: Color(0xff343434));
final Phonenum_style = TextStyle(fontSize: 14, color: Color(0xff343434));
final messagetext_style = TextStyle(fontSize: 14, color: Color(0xff343434));

final Order1cardwidget_title_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff4964D8));

final Order1cardwidget_subtitle_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff343434));

final Order2cardwidget_title_style = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xffA8A8A8));
final Order2cardwidget_subtitle_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff343434));
final Requestbycar_style = TextStyle(
    fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));
final ton30_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff343434));
final m14x2mx2m_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, color: Color(0xff343434));
final Notifications_style = TextStyle(
    color: Color(0xff343434), fontSize: 18, fontWeight: FontWeight.bold);
final Youcannotupdatethestatus_style = TextStyle(
  color: Color(0xffA8A8A8),
  fontSize: 15,
);
final close_style = TextStyle(
    color: Color(0xff4964D8), fontSize: 18, fontWeight: FontWeight.w600);
final seedetails_style = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xff4964D8));

// codeorder1
final seeall_style = TextStyle(
    color: Color(0xffffffff), fontSize: 16, fontWeight: FontWeight.w500);

final Truckswithawnings_style =
    TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w500);
final therearequotes_style = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xffFFAF2A));
final two59_style =
    TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600);
final bookingcar_style =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);

//bookincarbottomsheet
final Numberofvehicles_bottomsheet = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));

final one_style_bottomsheet = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xff343434));

final Shippingcost_style = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xffA8A8A8));
final two59_style_bottomsheet = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xff343434));
final Numberofvehicles_style_bottomsheet = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xffA8A8A8));
final Totalmoney_style = TextStyle(
    fontSize: 15, fontWeight: FontWeight.w600, color: Color(0xffA8A8A8));
final Promotion_style = TextStyle(color: Color(0xffFFAF2A), fontSize: 16);
final Choosepayment_style = TextStyle(fontSize: 16, color: Color(0xff4964D8));
final Confirm_style =
    TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);

final textform_hint_textstyle = TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Medium",
  color: Netural_3_Colour,
  // fontWeight: FontWeight.w200
);
final distinguish_car_style = TextStyle(
  fontSize: 12,
  fontFamily: "Avenir_Heavy",
  color: Accent_color,
  // fontWeight: FontWeight.w200
);
final submit_button_style = TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Medium",
  color: Netural_5_Colour,
  // fontWeight: FontWeight.w200
);
TextStyle truck_name_style({Color color}) => TextStyle(
      fontSize: 15,
      fontFamily: "Avenir_Heavy",
      color: color,
      // fontWeight: FontWeight.w200
    );
TextStyle truck_desc_style({Color color}) => TextStyle(
      fontSize: 12,
      fontFamily: "Avenir_Medium",
      color: color,
      // fontWeight: FontWeight.w200
    );
final bottomsheet_title = TextStyle(
  fontSize: 20,
  fontFamily: "Avenir_Heavy",
  color: Netural_1_Colour,
  // fontWeight: FontWeight.w200
);
final bottomsheet_content = TextStyle(
    fontSize: 16, fontFamily: "Avenir_Heavy", color: Netural_1_Colour);

final numberof_vehicle_style = TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Medium",
  color: Netural_1_Colour,
  // fontWeight: FontWeight.w200
);

    TextStyle bottomsheet_selected_style({Color color, String fontfamily}) => TextStyle(
  fontSize: 17,
  fontFamily: fontfamily,
  color: color,
  // fontWeight: FontWeight.w200
);

final row_bottomsheet_content_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Medium",
  color: Netural_3_Colour,
  // fontWeight: FontWeight.w200
);
TextStyle textformfield_error_style(Color color) => TextStyle(
    fontSize: 12, fontFamily: "Avenir_Heavy", color: color);
final title_style = TextStyle(
  fontSize: 20,
  fontFamily: "Avenir_Medium",
  color: Netural_1_Colour,
  // fontWeight: FontWeight.w200
);
final drop_down_style = TextStyle(
  fontSize: 20,
  fontFamily: "Avenir_Medium",
  color: Netural_1_Colour,
  // fontWeight: FontWeight.w200
);
final heading_style = TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Heavy",
  color: Netural_1_Colour,
  // fontWeight: FontWeight.w200
);

final Main_heading_title = TextStyle(
    fontSize: 22, fontFamily: 'Avenir_Medium', color: Netural_5_Colour);
final doller_style = TextStyle(
  fontSize: 15,
  fontFamily: "Avenir_Heavy",
  color: Accent_color,
  // fontWeight: FontWeight.w200
);
final order_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Medium",
  color: Netural_1_Colour,
);
final status_style2 = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Medium",
  color: Netural_2_Colour,
);
final see_details_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Medium",
  color: Primary_color,
);
final dound_driver_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Heavy",
  color: Accent_color,
  // fontWeight: FontWeight.w200
);
final tab_button_style = TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Heavy",
  color: Netural_5_Colour,
  // fontWeight: FontWeight.w200
);
final License_plate_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Medium",
  color: light_grey_Colour,
);
TextStyle stepper_title_style({Color color}) => TextStyle(
  fontSize: 16,
  fontFamily: "Avenir_Medium",
  color: color,
);
final state_style = TextStyle(
  fontSize: 14,
  fontFamily: "Avenir_Heavy",
  color: Netural_2_Colour,
);

final Main_heading_title2 = TextStyle(
    fontSize: 20, fontFamily: 'Avenir_Medium', color: Netural_1_Colour);

final Textfield_hintText = TextStyle(
    fontSize: 14, fontFamily: 'Avenir_Medium', color: Netural_3_Colour);

final Textfield_hintText2 = TextStyle(
    fontSize: 15, fontFamily: 'Avenir_Medium', color: Netural_1_Colour);
// order_page
final Youhavenoorders_style = TextStyle(
    fontSize: 20, fontFamily: "Avenir_Medium", color: Netural_2_Colour);

// tabbar_views

final tabbarview_style = TextStyle(
    fontFamily: "Avenir_Medium",
    color: Netural_2_Colour,
    fontSize: 16,
    fontWeight: FontWeight.w900);

// running page

final Application_style = TextStyle(
    fontSize: 16, color: Netural_1_Colour, fontFamily: "Avenir_Heavy");

final Cancelled_style = TextStyle(
color: Netural_5_Colour,
fontSize: 14,
fontFamily: "Avenir_Heavy",
);

final LosAngeles_style = TextStyle(
color: Netural_1_Colour,
fontFamily: "Avenir_Heavy",
fontSize: 18,
);

final date_style = TextStyle(
    color: Netural_1_Colour,
    fontSize: 16,
    fontFamily: "Avenir_Medium",
    fontWeight: FontWeight.w500);

final Reset_style = TextStyle(
color: Primary_color,
fontFamily: "Avenir_Heavy",
fontSize: 16,
);

// Notifiaction
final delivery_title_1 = TextStyle(
fontFamily: "Avenir_Heavy",
fontSize: 18,
color: Netural_1_Colour,
);

final delivery_title_2 = TextStyle(
fontFamily: "Avenir_Medium",
fontSize: 14,
color: Netural_2_Colour,
);

final delivery_title_3 = TextStyle(
    fontFamily: "Avenir_Medium", fontSize: 14, color: Netural_3_Colour);

// order information

final Shippingaddress = TextStyle(
fontFamily: "Avenir_Heavy",
fontSize: 18,
color: Netural_1_Colour,
);
final Contious_button_style = TextStyle(
fontFamily: "Avenir_Medium",
fontSize: 16,
color: Netural_5_Colour,
);

final payment_shipments_style = TextStyle(
    fontSize: 16, color: Netural_1_Colour, fontFamily: "Avenir_Medium");
final payment_shipments_style1 = TextStyle(
fontSize: 12,
color: Netural_2_Colour,
fontFamily: "Avenir_Heavy",
);
// car_cont

final car_cont_title_heading = TextStyle(
fontSize: 18,
color: Netural_1_Colour,
fontFamily: "Avenir_Heavy",
);

final car_cont_title_heading2 = TextStyle(
    fontSize: 15, color: Netural_2_Colour, fontFamily: "Avenir_Medium");
final car_cont_amount = TextStyle(
fontSize: 18,
color: Primary_color,
fontFamily: "Avenir_Heavy",
);

// cancel_order

final cancel_order_style1 = TextStyle(
    fontSize: 20, fontFamily: "Avenir_Heavy", color: Netural_1_Colour);

final cancel_order_style2 = TextStyle(
    fontSize: 16, fontFamily: "Avenir_Medium", color: Netural_2_Colour);

final Checkbox_Cancel_order = TextStyle(
    fontSize: 16, color: Netural_1_Colour, fontFamily: "Avenir_Medium");

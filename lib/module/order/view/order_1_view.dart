// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:truckgo_project/core/core.dart';
import 'package:truckgo_project/module/module.dart';

class Order1view extends StatefulWidget {
  const Order1view({Key key}) : super(key: key);

  @override
  State<Order1view> createState() => _Order1viewState();
}

class _Order1viewState extends State<Order1view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              main_app_bar(
                main_heading: Variable.order_num,
                onpressed: () {
                  Get.back();
                },
              ),
             Order1commoncardWidget(
              status_text: Variable.cancel,
              status_text_style: body3_style(color: Sementic_1_Colour),
             )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDottedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double strokeWidth;

  CustomDottedLine({
    this.height,
    this.color = Colors.black,
    this.strokeWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: CustomPaint(
        painter: DottedLinePainter(color: color, strokeWidth: strokeWidth),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;

  DottedLinePainter({this.color, this.strokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final double dashWidth = 5;
    final double dashSpace = 5;
    double startY = 0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashWidth), paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

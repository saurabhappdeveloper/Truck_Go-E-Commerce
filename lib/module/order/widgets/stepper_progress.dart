
import 'package:another_stepper/another_stepper.dart';
import 'package:truckgo_project/core/core.dart';

RxList progress_list = [].obs;
RxInt active_index = 0.obs;

class order_Progress extends StatefulWidget {
  @override
  State<order_Progress> createState() => _order_ProgressState();
}

class _order_ProgressState extends State<order_Progress> {
  List<StepperData> stepperData = [
    StepperData(
        title:Text(Variable.trip1_title,style: 
          stepper_title_style(color: Primary_color)),
      
        child1: Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                child: Image.asset(
                  "assets/white_calendar.png",
                  height: 16,
                  width: 16,
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(Variable.trip1_subtitle, style: status_style2),
                ),
              ))
            ],
          ),
        ),

        // subtitle: StepperText("Your order has been placed"),
        iconWidget: InkWell(
          onTap: () {
            active_index(0);
              progress_list.removeWhere((element) => element > 0);
            print(progress_list);
            print(active_index);
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Primary_color,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/white_truck.png",
              ),
            ),
          ),
        )),
    StepperData(
          title:Obx(()=>Text(Variable.trip2_title,style: 
            stepper_title_style(color:  progress_list.contains(1)
                          ? Primary_color
                          : Netural_3_Colour),
          )),

        child1: Obx(()=>
        progress_list.contains(1)?
        Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                child: Image.asset(
                  "assets/white_calendar.png",
                  height: 16,
                  width: 16,
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(Variable.trip1_subtitle, style: status_style2)),
              ))
            ],
          ),
        ):SizedBox.shrink()),

        // subtitle: StepperText("Your order has been placed"),
        iconWidget: InkWell(
          onTap: () async {
            print(progress_list);
            active_index(1);
            if (progress_list.contains(1)) {
              print("contains 1");
              progress_list.removeWhere((element) => element > 1);
            } else {
                for(var i=0;i<=1;i++)
              {
                print("for loop");
                progress_list.add(i);
              }
            }
          },
          child: Obx(() => Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: progress_list.contains(1)
                        ? Primary_color
                        : Netural_3_Colour,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/3d_box.png",
                  ),
                ),
              )),
        )),
    StepperData(
        title:Obx(()=>Text(Variable.trip3_title,style: 
            stepper_title_style(color:  progress_list.contains(2)
                          ? Primary_color
                          : Netural_3_Colour),
          )),
      
        child1: Obx(()=>
        progress_list.contains(2)?
        Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                child: Image.asset(
                  "assets/white_calendar.png",
                  height: 16,
                  width: 16,
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(Variable.trip1_subtitle, style: status_style2)),
              ))
            ],
          ),
        ):SizedBox.shrink()),

        // subtitle: StepperText("Your order has been placed"),
        iconWidget: InkWell(
          onTap: () {
            print(progress_list);
            active_index(2);
            if (progress_list.contains(2)) {
              for (var progress_list_value in progress_list) {
                print("for loop");
                if (progress_list_value > 2) {
                  progress_list.removeWhere((element) => element > 2);
                }
              }
            } else {
              print("inside else");
                for(var i=0;i<=2;i++)
              {
                print("for loop");
                progress_list.add(i);
              }
            }
            print(progress_list);
            print(active_index);
          },
          child: Obx(() => Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: progress_list.contains(2)
                        ? Primary_color
                        : Netural_3_Colour,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/fast_truck.png",
                  ),
                ),
              )),
        )),
    StepperData(
        title:Obx(()=>Text(Variable.trip4_title,style: 
            stepper_title_style(color:  progress_list.contains(3)
                          ? Primary_color
                          : Netural_3_Colour),
          )),
       
        child1: Obx(()=>
        progress_list.contains(3)?
        Padding(
          padding: const EdgeInsets.only(top: 2.0, left: 7),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 3),
                child: Image.asset(
                  "assets/white_calendar.png",
                  height: 16,
                  width: 16,
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(Variable.trip1_subtitle, style: status_style2)),
              ))
            ],
          ),
        ):SizedBox.shrink()),
        iconWidget: InkWell(
          onTap: () {
            active_index(3);
            if (progress_list.contains(3)) {
              for (var progress_list_value in progress_list) {
                print("for loop");
                if (progress_list_value > 3) {
                  progress_list.removeWhere((element) => element > 3);
                }
              }
            } else {
              print("this is else");
              for(var i=0;i<=3;i++)
              {
                print("for loop");
                progress_list.add(i);
              }
              
            }
            print(progress_list);
            print(active_index);
          },
          child: Obx(() => Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: progress_list.contains(3)
                        ? Primary_color
                        : Netural_3_Colour,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    "assets/check.png",
                  ),
                ),
              )),
        )),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0, left: 0, right: 20),
            child: AnotherStepper(
              stepperList: stepperData,
              stepperDirection: Axis.vertical,
              iconWidth: 40,
              iconHeight: 40,
              activeBarColor: Primary_color,
              inActiveBarColor: Netural_3_Colour,
              // inverted: true,
              verticalGap: 22,
              activeIndex: int.parse(active_index.toString()),
              barThickness: 3,
            ),
          ),
        ],
      ),
    );
  }
  
}

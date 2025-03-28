import 'package:truckgo_project/core/core.dart';

class Appbar extends StatefulWidget {
  final Widget leading_widget;
  final Widget action_widget;
  final TextAlign text_align;
  final Decoration decoration;
  final String title;
  final VoidCallback leading_ontap;
  final VoidCallback action_ontap;
  final bool leading_action;
  final bool trailing_action;
  final TextStyle text_style;
  final double height;
  // final Widget child;

  const Appbar(
      {Key key,
       this.leading_widget,
       this.action_widget,
       this.text_align,
       this.decoration,
       this.title,
       this.leading_ontap,
       this.action_ontap,
       this.leading_action = false,
       this.trailing_action = false,
       this.text_style, 
       this.height = 10,
      //  this.child
       })
      : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.decoration,
      child: Column(
        children: [
          Container(
            height: widget.height,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.leading_action
                      ? Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            child: InkWell(
                                onTap: widget.leading_ontap,
                                child: widget.leading_widget),
                          ),
                        )
                      : SizedBox.shrink(),
                  // Container(child:Icon(Icons.menu,color:Colors.transparent,),),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      widget.title.toString(),
                      textAlign: widget.text_align,
                      style: widget.text_style,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  widget.trailing_action
                      ? Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Container(
                            child: InkWell(
                                onTap: widget.action_ontap,
                                child: widget.action_widget),
                          ),
                        )
                      : SizedBox.shrink(),
                  // Container(child:Icon(Icons.menu,color:Colors.transparent,),)
                ],
              ),
            ),
          ),
          // widget.child != null?
          // SizedBox(width: 15,):
          // Container(),
          // widget.child == null ?? SizedBox.shrink():widget.child
        ],
      ),
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;
  final TextStyle titlestyle;

  CustomCheckbox({
    this.value,
    this.onChanged,
    this.title,
    this.titlestyle,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _value = false;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
          widget.onChanged(_value);
        });
      },
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
            child: Container(
              width: 20,
              height: 20,
              child: _value
                  ? Image.asset(
                      'assets/icons/check_box_On.png',
                      height: 24,
                      width: 24,
                      // color: Colors.white,
                    )
                  : Image.asset(
                      'assets/icons/check_box_Off.png',
                      height: 24,
                      width: 24,
                      // color: Colors.grey,
                    ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: widget.titlestyle,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

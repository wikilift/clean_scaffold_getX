import 'package:flutter/material.dart';

class WhiteBoardWidget extends StatelessWidget {
  const WhiteBoardWidget({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            color: Colors.white.withOpacity(0.6),
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.9,
                child: widget)));
  }
}

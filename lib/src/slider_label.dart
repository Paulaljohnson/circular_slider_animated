import 'package:flutter/material.dart';
import 'appearance.dart';

class SliderLabel extends StatelessWidget {
  final double value;
  final CircularSliderAppearance appearance;
  final Widget widget;
  const SliderLabel({Key? key, required this.value, required this.appearance, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: builtInfo(appearance),
    );
  }

  List<Widget> builtInfo(CircularSliderAppearance appearance) {
    List<Widget> widgetList = <Widget>[];
    if (appearance.infoTopLabelText != null) {
      widgetList.add(widget);
    }
    final modifier = appearance.infoModifier(value);
    widgetList.add(
      Text('$modifier', style: appearance.infoMainLabelStyle),
    );
    if (appearance.infoBottomLabelText != null) {
      widgetList.add(widget);
    }
    return widgetList;
  }
}

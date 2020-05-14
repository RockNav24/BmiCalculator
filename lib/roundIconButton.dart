import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPress});
  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      elevation: 2.0,
      shape: CircleBorder(),
      fillColor: Color(0x20dbdbdb),
      constraints: BoxConstraints.tightFor(
        height: 55,
        width: 55,
      ),
    );
  }
}

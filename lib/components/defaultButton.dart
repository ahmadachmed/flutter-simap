import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final Function press;
  final String text;
  const DefaultButton({
    Key key,
    @required this.press,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: press,
        child: Text(text),
        style: TextButton.styleFrom(
          animationDuration: Duration(milliseconds: 800),
          primary: bgColor,
          padding: EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
          textStyle: Theme.of(context).textTheme.bodyText2,
          backgroundColor: primaryColor,
        ),
      ),
    );
  }
}

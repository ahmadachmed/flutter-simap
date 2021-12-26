import 'package:flutter/material.dart';
import 'package:perizinanapp/constants.dart';
import 'package:perizinanapp/detailPerizinan/components/body.dart';
import 'package:perizinanapp/models/perizinanMenu.dart';

class DetailPerizinan extends StatelessWidget {
  static String routeName = "/detailperizinan";
  const DetailPerizinan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DetailPerizinanArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: darkBlackColor,
        backgroundColor: bgColor,
        title: Text(
          arguments.perizinan.subtitle,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Body(),
    );
  }
}

class DetailPerizinanArguments {
  final PerizinanMenus perizinan;

  DetailPerizinanArguments({@required this.perizinan});
}

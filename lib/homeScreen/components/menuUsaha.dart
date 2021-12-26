import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perizinanapp/components/defaultButton.dart';
import 'package:perizinanapp/detailPerizinan/detailPerizinan.dart';
import 'package:perizinanapp/models/perizinanMenu.dart';

import '../../constants.dart';

class MenuUsaha extends StatelessWidget {
  const MenuUsaha({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: bodyTextColor.withOpacity(0.05),
              spreadRadius: 4,
              blurRadius: 4,
              offset: Offset(0, 0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    perizinanMenus.length,
                    (index) => IconMenu(
                      icon: perizinanMenus[index].icon,
                      title: perizinanMenus[index].title,
                      subtitle: perizinanMenus[index].subtitle,
                      color: perizinanMenus[index].color,
                      press: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: darkBlackColor,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(defaultPadding * 2),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    perizinanMenus[index].icon,
                                    color: primaryColor,
                                    height: 70,
                                  ),
                                  SizedBox(height: defaultPadding),
                                  Text(
                                    'Siapkan Berkas Anda Untuk Melanjutkan mengisi Form Perizinan',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: defaultPadding),
                                  Text(
                                    'Diperlukan bukti foto diantaranya foto KTP, foto Selfie dan beberapa kelengkapan dokumen lainnya untuk proses terakhir yang dibutuhkan',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(height: defaultPadding),
                                  DefaultButton(
                                    text: "Lanjutkan",
                                    press: () => Navigator.pushNamed(
                                      context,
                                      DetailPerizinan.routeName,
                                      arguments: DetailPerizinanArguments(
                                          perizinan: perizinanMenus[index]),
                                    ),
                                    
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    perizinanMenus.length,
                    (index) => IconMenu(
                      icon: perizinanMenus2[index].icon,
                      title: perizinanMenus2[index].title,
                      subtitle: perizinanMenus2[index].subtitle,
                      color: perizinanMenus2[index].color,
                      press: () {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          backgroundColor: darkBlackColor,
                          context: context,
                          builder: (context) {
                            return Container(
                              padding: EdgeInsets.all(defaultPadding * 2),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    perizinanMenus2[index].icon,
                                    color: primaryColor,
                                    height: 70,
                                  ),
                                  SizedBox(height: defaultPadding),
                                  Text(
                                    'Siapkan Berkas Anda Untuk Melanjutkan mengisi Form Perizinan',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: defaultPadding),
                                  Text(
                                    'Diperlukan bukti foto diantaranya foto KTP, foto Selfie dan beberapa kelengkapan dokumen lainnya untuk proses terakhir yang dibutuhkan',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(height: defaultPadding),
                                  DefaultButton(
                                    text: "Lanjutkan",
                                    press: () => Navigator.pushNamed(
                                      context,
                                      DetailPerizinan.routeName,
                                      arguments: DetailPerizinanArguments(
                                          perizinan: perizinanMenus2[index]),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  const IconMenu({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    @required this.press,
    @required this.color,
  }) : super(key: key);

  final String icon, title, subtitle;
  final Color color;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: bodyTextColor.withOpacity(0.03),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: SvgPicture.asset(
              icon,
              height: 25,
              color: color,
            ),
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Container(
          width: 75,
          child: Column(
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyText1),
              Text(subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/App_services.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Common_Button extends StatelessWidget {
  final String btn_name;
  final bool loading;
  final Color bg_clr;
  final Function onPressed;
  double? width;
  TextStyle? textstyle;
  Common_Button(
      {super.key,
      required this.btn_name,
      required this.bg_clr,
      this.loading = false,
      this.width,
      this.textstyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width == null ? Appservices(context).getDeviceWidth() : width,
      child: TextButton(
          onPressed: () {
            onPressed();
          },
          style: TextButton.styleFrom(
            backgroundColor: bg_clr,
          ),
          child: Text(
            btn_name,
            style: textstyle == null
                ? FontStyle().fs_24_Bold().copyWith(color: AppColors.white)
                : textstyle,
          )),
    );
  }
}

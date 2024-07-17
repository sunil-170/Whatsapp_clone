import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappsaloon/View/PopUp_button/New_Payment.dart';
import 'package:whatsappsaloon/res/components/App_colors.dart';
import 'package:whatsappsaloon/res/components/Style_sheet.dart';

class Payment_screen extends StatelessWidget {
  const Payment_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: AppColors.Dark_green,
          icon: Icon(Icons.currency_rupee_rounded),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => New_payment_screen()));
          },
          label: Text('NEW PAYMENT')),
      appBar: AppBar(
          foregroundColor: AppColors.white,
          title: Text(
            "Payments",
            style: FontStyle().fs_20_Bold().copyWith(color: AppColors.white),
          ),
          elevation: 0,
          backgroundColor: AppColors.Dark_green),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(15),
          Text(
            "History",
            style: FontStyle()
                .fs_14_Regular()
                .copyWith(color: AppColors.Dark_green),
          ),
          Gap(30),
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/payment_img.png",
              )),
          Gap(25),
          Divider(
            thickness: 10,
            color: AppColors.grey,
          ),
          Gap(10),
          Text(
            "Payment Method",
            style: FontStyle()
                .fs_14_Regular()
                .copyWith(color: AppColors.Dark_green),
          ),
          Gap(25),
          ListTile(
            leading: Icon(
              Icons.privacy_tip_rounded,
              color: AppColors.Dark_green,
            ),
            title: Text(
                "To protect your security. WhatsApp does notstore your upi pin or full bank account number.Learn more"),
          ),
          ListTile(
            leading: Icon(
              Icons.add_circle_outline_sharp,
              color: AppColors.Dark_green,
            ),
            title: Text(
              "Add Payments Method",
              style: FontStyle()
                  .fs_12_Regular()
                  .copyWith(color: AppColors.Dark_green),
            ),
          ),
          Gap(25),
          Divider(
            thickness: 10,
            color: AppColors.grey,
          ),
          Gap(15),
          ListTile(
            leading: Icon(
              Icons.add_circle_outline_sharp,
              color: AppColors.Dark_green,
            ),
            title: Text(
              "Add Payments Method",
              style: FontStyle()
                  .fs_12_Regular()
                  .copyWith(color: AppColors.Dark_green),
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/bharat_img.png"),
                Image.asset("assets/images/upi_img.png"),
              ],
          ),
        ],
      ),
    );
  }
}

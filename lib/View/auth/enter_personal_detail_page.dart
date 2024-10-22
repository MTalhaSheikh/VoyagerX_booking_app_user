import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/constants.dart';
import '../../config/pallet.dart';
import '../Widgets/reuseableWidget.dart';
import '../main_pages/home_page.dart';

class EnterPersonalDetailPage extends StatelessWidget {
  const EnterPersonalDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Image.asset(
                  'assets/icons/app_logo.png',
                  height: 131,
                  width: 92,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'Enter Your details',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: blackDefaultColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                TextFormFieldWidget(
                  imagePath: 'assets/icons/user.png',
                  hintText: 'Enter your first name',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  imagePath: 'assets/icons/email.png',
                  hintText: 'Enter your email',
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  imagePath: 'assets/icons/location.png',
                  hintText: 'Address',
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.14,
                ),
                AppButton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                  title: 'Next',
                  borderRadiusInkWell: BorderRadius.circular(51),
                  borderRadius: BorderRadius.circular(51),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

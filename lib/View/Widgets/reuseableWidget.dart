import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/config/constants.dart';
import 'package:voyagerx/config/pallet.dart';

class AppButton extends StatelessWidget {
  BorderRadiusGeometry? borderRadius;
  String title;
  void Function()? onTap;
  BorderRadius? borderRadiusInkWell;

  AppButton(
      {required this.borderRadius,
      required this.title,
      required this.onTap,
      required this.borderRadiusInkWell});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      elevation: 3,
      child: InkWell(
        borderRadius: borderRadiusInkWell,
        onTap: onTap,
        child: Container(
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            color: mainColor,
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.nunito(
                color: whiteColor,
                fontWeight: FontWeight.w800,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  String imagePath;
  String hintText;

  TextFormFieldWidget({
    required this.imagePath,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: Border.all(color: blackDefaultColor, width: 0.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            SizedBox(
              width: kdefaultPadding,
            ),
            Expanded(
              child: TextFormField(
                style: GoogleFonts.nunito(
                  color: blackDefaultColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: GoogleFonts.nunito(
                      color: blackDefaultColor,
                      fontWeight: FontWeight.w200,
                      fontSize: 16,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget viewAllRow(void Function()? onTap,String title){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      color: whiteColor,
      child: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: blackDefaultColor,
            ),
          ),
          Spacer(),
          Text(
            'view all',
            style: GoogleFonts.nunito(
              color: blackDefaultColor,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          )
        ],
      ),
    ),
  );
}

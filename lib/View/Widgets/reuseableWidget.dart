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

PreferredSizeWidget appBar(void Function()? onTap,String title){
  return AppBar(
    surfaceTintColor: whiteColor,
    backgroundColor: whiteColor,
    elevation: 0,
    centerTitle: true,
    leading: InkWell(
      onTap: onTap,
      child: Icon(
        Icons.arrow_back_ios,color: blackDefaultColor,size: 15,
      ),
    ),
    title: Text(
      title,
      style: GoogleFonts.nunito(
        color: blackDefaultColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget travelCitiesWidget(String fromCity,toCity){
  return Container(
    height: 25,
    width: 95,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(2),
    ),
    child: Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          fromCity,
          style: GoogleFonts.nunito(
            color: whiteColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.asset(
          'assets/images/arrow_forward.png',
          width: 20,
        ),
        Text(
          toCity,
          style: GoogleFonts.nunito(
            color: whiteColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}


Widget additionalThingsWidget(String imagePath, String title) {
  return Row(
    children: [
      Image.asset(
        imagePath,
        height: 12,
        width: 12,
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        title,
        style: GoogleFonts.nunito(
            color: textGreyColorTwo,
            fontWeight: FontWeight.w600,
            fontSize: 8),
      )
    ],
  );
}

Widget selectedSeatContainer(String seatNumber){
  return Container(
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(3),
    ),
    child: Padding(
      padding:  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: Text(
        seatNumber,
        style: GoogleFonts.nunito(
          color: whiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    ),
  );
}

Widget textFieldWidget(String label,String hintText,bool obscureText){
  return Container(
    height: 47,
    child: TextFormField(
      obscureText: obscureText,
      style: GoogleFonts.nunito(),
      decoration: InputDecoration(
        hintStyle: GoogleFonts.nunito(),
        labelText: label,
        labelStyle: GoogleFonts.nunito(color: blackDefaultColor),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: bgGreyColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: blackDefaultColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: bgGreyColor,
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ), //
      ),
    ),
  );
}

Widget appButton(String title){
  return Container(
    height: 48,
    width: double.infinity,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: Text(
        title,
        style: GoogleFonts.nunito(
          color: whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,

        ),
      ),
    ),
  );
}
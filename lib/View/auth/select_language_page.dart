import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/View/Widgets/reuseableWidget.dart';
import 'package:voyagerx/config/constants.dart';
import 'package:voyagerx/config/pallet.dart';

import 'enter_phone_number_page.dart';

class SelectLanguagePage extends StatelessWidget {
  const SelectLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              Image.asset(
                'assets/icons/app_logo.png',
                height: 131,
                width: 92,
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              Text(
                'Language Selection',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: blackDefaultColor,
                ),
              ),
              Text(
                'Please select your Language ',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: blackDefaultColor,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Language',
                  style: GoogleFonts.nunito(
                    color: blackDefaultColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  border: Border.all(
                    color: blackDefaultColor,
                    width: 0.5,
                  )
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: kdefaultPadding),
                  child: Row(
                    children: [
                      Text(
                        'English',
                        style: GoogleFonts.nunito(
                          color: blackDefaultColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: blackDefaultColor,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.14,),
              AppButton(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterPhoneNumberPage()));
                },
                title: 'Next',
                borderRadiusInkWell: BorderRadius.circular(51),
                borderRadius: BorderRadius.circular(51),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

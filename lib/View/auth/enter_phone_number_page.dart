import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../config/constants.dart';
import '../../config/pallet.dart';
import '../Widgets/reuseableWidget.dart';
import 'enter_otp_page.dart';

class EnterPhoneNumberPage extends StatefulWidget {
  const EnterPhoneNumberPage({super.key});

  @override
  State<EnterPhoneNumberPage> createState() => _EnterPhoneNumberPageState();
}

class _EnterPhoneNumberPageState extends State<EnterPhoneNumberPage> {

  String isoCode = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: SingleChildScrollView(
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
                  'Welcome Back!',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: blackDefaultColor,
                  ),
                ),
                Text(
                  'Login with your phone number',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: blackDefaultColor,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                InternationalPhoneNumberInput(
                  textStyle: GoogleFonts.nunito(),
                  onInputChanged: (PhoneNumber phoneNumber) {
                    isoCode = phoneNumber.isoCode ?? 'US'; // Capture the ISO code
                  },
                  onInputValidated: (bool value) {
                    print(value ? "Valid number" : "Invalid number");
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    trailingSpace: false,
                    leadingPadding: 20,
                    setSelectorButtonAsPrefixIcon: true,
                    useBottomSheetSafeArea: false,
                  ),
                  ignoreBlank: true,
                  autoValidateMode: AutovalidateMode.onUserInteraction,
                  selectorTextStyle: GoogleFonts.nunito(
                    color: blackDefaultColor,
                  ),
                  initialValue: number,
                  textFieldController: TextEditingController(),
                  formatInput: true,
                  keyboardType: TextInputType.phone,
                  inputDecoration: InputDecoration(
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(51),
                      borderSide: BorderSide(
                        color: blackDefaultColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(51),
                      borderSide: BorderSide(
                        color: blackDefaultColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(51),
                      borderSide: BorderSide(
                        color: blackDefaultColor,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(51),
                      borderSide: BorderSide(
                        color: blackDefaultColor,
                      ),
                    ),
                    // labelText: "Mobile Number",
                    // labelStyle: GoogleFonts.nunito(),
                    hintStyle: GoogleFonts.nunito(),
                    hintText: "Enter your mobile number",
                  ),
                  onSaved: (PhoneNumber number) {
                    // mobileNumber = number.phoneNumber!;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.14,),
                AppButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterOtpPage()));
                  },
                  title: 'Next',
                  borderRadiusInkWell: BorderRadius.circular(51),
                  borderRadius: BorderRadius.circular(51),
                ),
                SizedBox(height: 25,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

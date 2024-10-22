import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../config/constants.dart';
import '../../config/pallet.dart';
import '../Widgets/reuseableWidget.dart';
import 'enter_personal_detail_page.dart';

class EnterOtpPage extends StatefulWidget {
  const EnterOtpPage({super.key});

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {


  String currentText = '';
  late List<TextEditingController> otpControllers;
  final int otpLength = 4;
  late List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();
    otpControllers =
        List.generate(otpLength, (index) => TextEditingController());
    focusNodes = List.generate(otpLength, (index) => FocusNode());
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

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
                  'Phone Verification',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                    color: blackDefaultColor,
                  ),
                ),
                Text(
                  'Enter your OTP code here',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: blackDefaultColor,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.12,),
                PinCodeTextField(
                  length: 4,
                  obscureText: true,
                  obscuringCharacter: '*',
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeFillColor:whiteColor,
                    inactiveFillColor: whiteColor,
                    selectedFillColor: whiteColor,
                    inactiveColor: mainColor,
                    selectedColor: mainColor,
                    activeColor: mainColor,
                  ),
                  cursorColor: mainColor,
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onChanged: (value) {
                    setState(() {
                      currentText = value;
                    });
                  },
                  onCompleted: (value) {
                    if (value.length == 4) {
                      // _navigateToNextPage();
                    }
                  },
                  appContext: context,
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.14,),
                AppButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterPersonalDetailPage()));
                  },
                  title: 'Verify Now',
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

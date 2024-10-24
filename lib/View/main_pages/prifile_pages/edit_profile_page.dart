import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/config/constants.dart';

import '../../../config/pallet.dart';
import '../../Widgets/reuseableWidget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar(
            () {
          Navigator.pop(context);
        },
        'Profile Edit',
      ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        // color: bgGreyColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                      child: CircleAvatar(
                        radius: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            'assets/extra_image/person.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      right: 22,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: bgGreyColor,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: blackDefaultColor,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 29,
                  width: 211,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(82),
                  ),
                  child: Center(
                    child: Text(
                      '0321 45879657',
                      style: GoogleFonts.nunito(
                        color: whiteColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                textFieldWidget(
                  'Name',
                  "Hamza",
                  false,
                ),
                SizedBox(height: 20,),
                textFieldWidget(
                  'Email',
                  "awan@gmail.com",
                  false,
                ),
                SizedBox(height: 20,),
                textFieldWidget(
                  'Password',
                  "",
                  true,
                ),
                SizedBox(height: 70,),
                appButton('Save'),
              ],
            ),
          ),
        ));
  }
}

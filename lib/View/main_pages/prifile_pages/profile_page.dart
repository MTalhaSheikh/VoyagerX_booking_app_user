import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/View/main_pages/prifile_pages/edit_profile_page.dart';
import 'package:voyagerx/View/main_pages/prifile_pages/my_booking_page.dart';
import 'package:voyagerx/config/constants.dart';
import 'package:voyagerx/config/pallet.dart';

import '../../Widgets/reuseableWidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar(
        () {
          Navigator.pop(context);
        },
        'Profile',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 116,
              width: 116,
              decoration:
                  BoxDecoration(color: bgGreyColor, shape: BoxShape.circle),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/extra_image/person.png')),
            ),
            Text(
              'Hamza',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: blackDefaultColor,
              ),
            ),
            Text(
              'hamzasanaullah@gmail.com',
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: textGreyColorTwo,
              ),
            ),
            SizedBox(
              height: 75,
            ),
            _reuseableRow(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()));
            }, Icons.edit, 'Edit Profile', blackDefaultColor),
            Divider(
              color: textGreyColorTwo,
            ),
            _reuseableRow(
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyBookingPage()));
              },
              Icons.access_time_outlined,
              'History',
              blackDefaultColor,
            ),
            Divider(
              color: textGreyColorTwo,
            ),
            _reuseableRow(
              () {},
              Icons.info_outline,
              'Logout',
              redColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget _reuseableRow(
      void Function()? onTap, IconData icondata, String title, Color color) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 7),
        child: Row(
          children: [
            Container(
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bgGreyColor,
              ),
              child: Icon(
                icondata,
                color: color,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: GoogleFonts.nunito(
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: blackDefaultColor,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}

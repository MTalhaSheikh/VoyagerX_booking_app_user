import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/View/main_pages/prifile_pages/profile_page.dart';
import 'package:voyagerx/config/constants.dart';
import 'package:voyagerx/config/pallet.dart';

import '../Widgets/reuseableWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Johnson',
                          style: GoogleFonts.nunito(
                            color: blackDefaultColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Let\'s find your favourite car here',
                          style: GoogleFonts.nunito(
                            color: textGreyColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      },
                      child: Container(
                        height: 41,
                        width: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage('assets/extra_image/person.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: textGreyColor,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Your location',
                          style: GoogleFonts.nunito(
                            color: textGreyColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          'Kuala lumpur, Malaysia',
                          style: GoogleFonts.nunito(
                            color: blackDefaultColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 38,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: mainColor,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Image.asset('assets/icons/filter_icon.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Divider(
                  color: blackDefaultColor,
                ),
                SizedBox(height: 15,),
                viewAllRow((){},'Popular Car'),
                SizedBox(height: 10,),
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 284,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: bgGreyColor,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                Container(
                                  width: 51,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: mainColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Available',
                                      style: GoogleFonts.nunito(
                                        color: whiteColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 51,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: blackDefaultColor,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Luggage',
                                      style: GoogleFonts.nunito(
                                        color: blackDefaultColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Image.asset('assets/extra_image/car_image.png',height: 120,),
                            SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Mazda',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: blackDefaultColor,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$99',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: blackDefaultColor,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'MX2 2019',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: blackDefaultColor,
                                  ),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.timelapse_rounded,
                                  size: 12,
                                ),
                                Text(
                                  '12:00 pm',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: blackDefaultColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Divider(
                              color: blackDefaultColor,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                travelCitiesWidget('Lhr', 'Kar'),
                                additionalThingsWidget('assets/images/seat_image.png','Seat'),
                                additionalThingsWidget('assets/images/headPhone_image.png','Headphone'),
                                additionalThingsWidget('assets/images/wifi_image.png','Wifi'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 20,);
                  },
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

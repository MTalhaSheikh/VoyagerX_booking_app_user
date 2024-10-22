import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/View/main_pages/prifile_pages/history_detail_page.dart';
import 'package:voyagerx/config/constants.dart';
import 'package:voyagerx/config/pallet.dart';

import '../../Widgets/reuseableWidget.dart';

class MyBookingPage extends StatelessWidget {
  const MyBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: appBar(
          () {
            Navigator.pop(context);
          },
          'My Booking',
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HistoryDetailPage()));
                },
                child: Container(
                  height: 284,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: bgGreyColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
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
                                  'Luggage',
                                  style: GoogleFonts.nunito(
                                    color: whiteColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Center(
                              child: Text(
                                'wed 12-sep-2024',
                                style: GoogleFonts.nunito(
                                  color: blackDefaultColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Image.asset(
                          'assets/extra_image/car_image.png',
                          height: 120,
                        ),
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
                            additionalThingsWidget(
                                'assets/images/seat_image.png', 'Seat'),
                            additionalThingsWidget('assets/images/headPhone_image.png',
                                'Headphone'),
                            additionalThingsWidget(
                                'assets/images/wifi_image.png', 'Wifi'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20,
              );
            },
          ),
        ));
  }
}

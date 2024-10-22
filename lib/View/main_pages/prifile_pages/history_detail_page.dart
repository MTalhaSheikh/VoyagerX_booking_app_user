import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voyagerx/config/constants.dart';

import '../../../config/pallet.dart';
import '../../Widgets/reuseableWidget.dart';

class HistoryDetailPage extends StatelessWidget {
  const HistoryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: appBar(
        () {
          Navigator.pop(context);
        },
        'History Detail',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgGreyColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        height: 95,
                        width: 104,
                        decoration: BoxDecoration(
                          color: textGreyColor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/extra_image/hyundai_image.png',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                travelCitiesWidget('Lhr', 'Kar'),
                                Spacer(),
                                Text(
                                  '12:00 pm',
                                  style: GoogleFonts.nunito(
                                    color: textGreyColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                additionalThingsWidget(
                                    'assets/images/seat_image.png', 'Seat'),
                                additionalThingsWidget(
                                    'assets/images/headPhone_image.png',
                                    'Headphone'),
                                additionalThingsWidget(
                                    'assets/images/wifi_image.png', 'Wifi'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _textWithContainer(
                'Select Seats',
                Row(
                  children: [
                    selectedSeatContainer('4'),
                    SizedBox(
                      width: 10,
                    ),
                    selectedSeatContainer('5'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _textWithContainer(
                'Passenger Details',
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _textColumn('Name','Hamza',),
                        SizedBox(height: 10,),
                        _textColumn('CNIC','35102475612364',),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _textColumn('Mobile Number','0345 7445780',),
                        SizedBox(height: 10,),
                        _textColumn('Email','hamzasanaullah@gmail.com',),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _textWithContainer(
                'Luggage Details',
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _textColumn('Size','Medium',),
                    Spacer(),
                    _textColumn('Weight','22kg',),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: bgGreyColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    children: [
                      Text(
                        'Total Payment',
                        style: GoogleFonts.nunito(
                          color: blackDefaultColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$100',
                        style: GoogleFonts.nunito(
                          color: blackDefaultColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textWithContainer(String title, Widget widget) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
            color: blackDefaultColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: bgGreyColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: widget,
          ),
        ),
      ],
    );
  }

  Widget _textColumn(String title,subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
              color: textGreyColorTwo,
              fontSize: 8,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 4,),
        Text(
          subtitle,
          style: GoogleFonts.nunito(
            color: blackDefaultColor,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

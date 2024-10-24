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
                    InkWell(
                      onTap: () {
                        showFilterDialog(context);
                      },
                      child: Container(
                        width: 38,
                        height: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: mainColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset('assets/icons/filter_icon.png'),
                        ),
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

  void showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: EdgeInsets.all(0),
          content: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Filter',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: blackDefaultColor,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close,size: 20,),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: bgGreyColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: filterOptionButton(
                              'assets/images/user.png',
                              'Passenger',
                              24,
                              24,
                              whiteColor,
                              FontWeight.w700,
                              true,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: filterOptionButton(
                              'assets/images/luggage.png',
                              'Luggage',
                              12,
                              18,
                              blackDefaultColor,
                              FontWeight.w400,
                              false,
                            ),
                          ),
                          // _buildFilterOptionButton(
                          //     context, Icons.person, 'Passenger', true),
                          // _buildFilterOptionButton(
                          //     context, Icons.luggage, 'Luggage', false),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: bgGreyColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 7,vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: filterOptionButton(
                              'assets/images/car.png',
                              'Car',
                              32,
                              23,
                              whiteColor,
                              FontWeight.w700,
                              true,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: filterOptionButton(
                              'assets/images/bus.png',
                              'Bus',
                              17,
                              25,
                              blackDefaultColor,
                              FontWeight.w400,
                              false,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Expanded(
                            child: filterOptionButton(
                              'assets/images/van.png',
                              'Van',
                              17,
                              25,
                              blackDefaultColor,
                              FontWeight.w400,
                              false,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildDropdown(context, 'Date',Image.asset('assets/images/date_and_time.png',height: 16,)),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(child: _buildDropdown(context, 'From City',SizedBox())),
                      SizedBox(width: 10),
                      Expanded(child: _buildDropdown(context, 'Station',SizedBox())),
                    ],
                  ),
                  SizedBox(height: 10),
                  // To City & Station dropdowns
                  Row(
                    children: [
                      Expanded(child: _buildDropdown(context, 'To City',SizedBox())),
                      SizedBox(width: 10),
                      Expanded(child: _buildDropdown(context, 'Station',SizedBox())),
                    ],
                  ),
                  SizedBox(height: 30),
                  // Search Button
                 appButton('Search car',),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  Widget filterOptionButton(String imagePath,String title,double imageHeight,double imageWidth,Color textColor,FontWeight fontWeight,bool isSelected){
    return Material(
      elevation: isSelected ? 3 : 0,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 38,
        decoration: BoxDecoration(
          color: isSelected ? mainColor : bgGreyColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath,height: imageHeight,width: imageWidth,),
            SizedBox(width: 5,),
            Text(
              title,
              style: GoogleFonts.nunito(
                color: textColor,
                fontWeight: fontWeight,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _buildFilterOptionButton(
      BuildContext context, IconData icon, String text, bool isSelected) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.teal : Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      icon: Icon(icon, color: isSelected ? Colors.white : Colors.black),
      label: Text(
        text,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      ),
      onPressed: () {
        // Add functionality for the button press
      },
    );
  }

  Widget _buildDropdown(BuildContext context, String hint,Widget widget) {
    return Container(
      decoration: BoxDecoration(
        color: bgGreyColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          // fillColor: bgGreyColor,
          // filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
           border: InputBorder.none,
        ),
        icon: Icon(Icons.keyboard_arrow_down,size: 15,),
        hint: Row(
          children: [
            widget,
            SizedBox(width: 10,),
            Text(hint,style: GoogleFonts.nunito(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: blackDefaultColor,
            ),),
          ],
        ),
        items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style: GoogleFonts.nunito(
              color: blackDefaultColor,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),),
          );
        }).toList(),
        onChanged: (String? newValue) {
          // Handle change in value
        },
      ),
    );
  }
}

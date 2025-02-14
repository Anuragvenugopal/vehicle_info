import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehicle_info/screens/home_page.dart';
import 'package:vehicle_info/utils/app_colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: screenWidth,
            height: screenHeight / 2,
            color: Colors.black,
            child: SvgPicture.asset(
              "assets/images/Img_car1.svg",
              width: screenWidth ,
              height: screenHeight /2,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Cars Details\nfuel efficient and low pollutant Details",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Car fuel efficient and low pollutant Detailse",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lite_black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {

                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {

                        },
                        child: CircleAvatar(
                          radius: screenWidth * 0.07,
                          backgroundColor: Colors.black.withOpacity(0.8),
                          child: IconButton(
                            icon:Icon(Icons.arrow_forward_ios),
                            color: Colors.white,onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>Homepage(),));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

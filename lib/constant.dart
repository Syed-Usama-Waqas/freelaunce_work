import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Colors
Color kPrimaryColor = const Color(0xffA1A0F2);
Color kBorderColor = const Color(0xffD9D9D9);
Color kWhiteColor = Colors.white;
Color kBlackColor = Colors.black;

//TestStyles
TextStyle kH1 = TextStyle(
  fontFamily: kNunitoBoldFont,
  fontSize: 20.sp,
  fontWeight: FontWeight.bold,
  color: kWhiteColor,
);
TextStyle kH2 = TextStyle(
  fontFamily: kNunitoBoldFont,
  fontSize: 16.sp,
  fontWeight: FontWeight.bold,
  color: kBlackColor,
);
TextStyle kH3 = TextStyle(
  fontFamily: kNunitoMediumFont,
  fontSize: 12.sp,
  fontWeight: FontWeight.normal,
  color: kBlackColor,
);
TextStyle kH4 = TextStyle(
  fontFamily: kNunitoMediumFont,
  fontSize: 10.sp,
  fontWeight: FontWeight.normal,
  color: kBlackColor,
);

//Svg Links
const String kHouseSvg = "assets/svg/home.svg";
const String kMapSvg = "assets/svg/map.svg";
const String kLocalOfferSvg = "assets/svg/local_offer.svg";
const String kNotificationSvg = "assets/svg/notification.svg";
const String kMoreSvg = "assets/svg/more.svg";
const String kCoffeeSvg = "assets/svg/coffee.svg";
const String kRetailSvg = "assets/svg/retail.svg";

//Image Links
const String kR1Image = "assets/image/r1.png";
const String kR2Image = "assets/image/r2.jpeg";
const String kR3Image = "assets/image/r3.jpeg";
const String kT1Image = "assets/image/t1.jpeg";
const String kT2Image = "assets/image/t2.jpeg";

//Font Links
const String kNunitoBoldFont = "Nunito-Bold";
const String kNunitoMediumFont = "Nunito-Medium";

//Offer Small Box dummy data
var tempSmallBoxText = ["Retail", "Food & Drinks", "Home Show"];
var tempSmallBoxSvgPath = [kRetailSvg, kHouseSvg, kHouseSvg];

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freelaunce/constant.dart';

class LocalOfferScreen extends StatelessWidget {
  const LocalOfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Local Offer",
          style: kH1,
        ),
        centerTitle: false,
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
      ),
      backgroundColor: kPrimaryColor,
      body: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.r),
          ),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 23.h, left: 23.w, right: 23.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: kH2,
                  ),
                  Text(
                    "SEE ALL",
                    style: kH3.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            SizedBox(
              height: 81.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomSmallBox(
                      text: tempSmallBoxText[index],
                      svgPath: tempSmallBoxSvgPath[index],
                      onTap: () {},
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 23.h, left: 23.w, right: 23.w),
              child: Text(
                "Trending",
                style: kH2,
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            SizedBox(
              height: 190.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomBigBox(
                      text: "5% off Rentals and Bookings",
                      imagePath: index == 0 ? kT1Image : kT2Image,
                      onTap: () {},
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 23.h, left: 23.w, right: 23.w),
              child: Text(
                "New this month",
                style: kH2,
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            SizedBox(
              height: 190.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 23.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CustomBigBox(
                      text: "Färsk vispgrädde rabatt :10",
                      imagePath: index == 0
                          ? kR1Image
                          : index == 1
                              ? kR2Image
                              : kR3Image,
                      onTap: () {},
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSmallBox extends StatelessWidget {
  CustomSmallBox({
    Key? key,
    required this.text,
    required this.svgPath,
    required this.onTap,
  }) : super(key: key);
  String svgPath, text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 81.h,
        width: 146.w,
        margin: EdgeInsets.only(right: 9.w),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: kBorderColor, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgPath,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              text,
              style: kH3.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBigBox extends StatelessWidget {
  CustomBigBox({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);
  String imagePath, text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 180.h,
        width: 258.w,
        margin: EdgeInsets.only(right: 16.w, bottom: 10.h),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: kBorderColor, width: 1),
            boxShadow: [
              BoxShadow(
                color: kBlackColor.withOpacity(0.25), //color of shadow
                spreadRadius: 0, //spread radius
                blurRadius: 5.r, // blur radius
                offset: Offset(0, 4),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 135.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBorderColor,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(8.r)),
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(8.r)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              height: 45.h,
              padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 10.h),
              child: Text(
                text,
                style: kH2.copyWith(overflow: TextOverflow.clip),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

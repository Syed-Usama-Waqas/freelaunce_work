import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freelaunce/constant.dart';
import 'package:freelaunce/screens/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: kPrimaryColor,
          systemNavigationBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
        child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              builder: (context, child) {
                ScreenUtil.init(
                  context,
                  designSize: const Size(414, 896),
                );
                return child ?? const SizedBox();
              },
              title: "Freelaunce",
              theme: ThemeData(
                fontFamily: kNunitoMediumFont,
              ),
              debugShowCheckedModeBanner: false,
              home: Dashboard(),
            );
          },
        ));
  }
}

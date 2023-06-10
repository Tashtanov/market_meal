/* External dependencies */
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class ThemeHelper {
  static const Color primary = Color(0xff3364E0);

  static const Color lightBlue = Color(0xff5D78B3);
  static const Color white = Color(0xffFFFFFF);
  static const Color textColor = Color(0xff0D1F3C);
  static const Color background = Color(0xffEDF1F9);
  static const Color blue = Color(0xff347af0);
  static const Color light = Color(0xfffbfcfd);
  static const Color black = Color(0xff000000);
}

abstract class TextHelper {
  static TextStyle medium9 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium23 = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium34 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium36 = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium45 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle medium48 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle normal10 = TextStyle(
    fontSize: 12.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle normal12 = TextStyle(
    fontSize: 12.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle normal14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal16 = TextStyle(
    fontStyle: FontStyle.normal,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle normal18 = TextStyle(
    fontSize: 18.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle normal20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal22 = TextStyle(
    fontSize: 22.sp,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
  );
  static TextStyle normal24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal36 = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal40 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal45 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle normal48 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );
  static TextStyle w600fs12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static TextStyle w600fs14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static TextStyle w600fs16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static TextStyle w600fs20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );

  static TextStyle bold10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle semiBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold17 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle semiBold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle bold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold26 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold36 = TextStyle(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold48 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w700,
  );

  // Inter
  static TextStyle inter16normal = TextStyle(
    fontFamily: 'Inter',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle inter20normal = TextStyle(
    fontFamily: 'Inter',
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle inter36normal = TextStyle(
    fontFamily: 'Inter',
    fontSize: 36.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle inter45normal = TextStyle(
    fontFamily: 'Inter',
    fontSize: 45.sp,
    fontWeight: FontWeight.w500,
  );
}

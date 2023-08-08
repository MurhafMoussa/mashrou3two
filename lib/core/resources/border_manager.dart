import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';

class BorderRadiusManager {
  static final all5 = const BorderRadius.all(Radius.circular(5)).r;
  static final all10 = const BorderRadius.all(Radius.circular(10)).r;
  static final all15 = const BorderRadius.all(Radius.circular(15)).r;
  static final topLeftOnly20 =
      const BorderRadius.only(topLeft: Radius.circular(60)).r;
}

class BorderSideManager {
  static const selectedUserTypeBorderSide = BorderSide(
    width: 3,
    color: ColorManager.darkGreen,
  );
}

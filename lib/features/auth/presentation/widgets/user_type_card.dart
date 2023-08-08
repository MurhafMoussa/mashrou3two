
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mashrou3two/core/resources/border_manager.dart';
import 'package:mashrou3two/core/resources/padding_manager.dart';
import 'package:mashrou3two/core/widgets/app_text.dart';

class UserTypeCard extends StatelessWidget {
  const UserTypeCard({
    super.key,
    required this.userTypeName,
    required this.userTypeImage,
    this.isSelected = false, required this.onTap,

  });
  final String userTypeName;
  final String userTypeImage;
  final bool isSelected;
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: PaddingManager.appHorizontalPadding,
      child: SizedBox(
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusManager.all10,
            side: isSelected
                ? BorderSideManager.selectedUserTypeBorderSide
                : BorderSide.none,
          ),
          child: Padding(
            padding: PaddingManager.contentPaddingV7H14,
            child: Column(
              children: [
                Image.asset(
                  userTypeImage,
                  width: 100.w,
                  height: 100.h,
                ),
                AppText.largeBody(text: userTypeName),
              ],
            ),
          ),
        ),
      ),
    ),
  );

}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class ButtonWidgets {
  static buttonWithWidth({
    required title,
    required onTap,
    color,
    textColor,
    double textSize = 15.0,
    double screenWidth = 0.5,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: screenWidth.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.r),
          color: color ?? Get.theme.primaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Text(
            title,
            style: Get.textTheme.labelLarge!.copyWith(
              color: textColor ?? Colors.black,
              fontSize: textSize,
            ),
          ),
        ),
      ),
    );
  }

  static buttonWithAnchorAndIcon({
    required title,
    required onTap,
    required icon,
    color,
    textColor,
    double screenWidth = 0.8,
  }) {
    return Container(
      width: screenWidth.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: Get.theme.primaryColorLight,
      ),
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Expanded(child: Icon(icon)),
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: Get.textTheme.labelLarge,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.navigate_next,
              color: Colors.black,
              size: 30.r,
            ),
          ),
        ],
      ),
    );
  }
}

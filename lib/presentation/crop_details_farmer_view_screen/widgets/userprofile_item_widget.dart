import 'package:bharath_s_application14/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse4,
          height: 68.v,
          width: 71.h,
          radius: BorderRadius.circular(
            35.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            bottom: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Farmer 1",
                style: CustomTextStyles.titleLargeInterWhiteA700,
              ),
              SizedBox(height: 9.v),
              CustomImageView(
                imagePath: ImageConstant.imgStar1,
                height: 20.v,
                width: 21.h,
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 23.v,
          width: 90.h,
          margin: EdgeInsets.symmetric(vertical: 22.v),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            borderRadius: BorderRadius.circular(
              11.h,
            ),
            border: Border.all(
              color: theme.colorScheme.onPrimary.withOpacity(1),
              width: 1.h,
            ),
          ),
        ),
      ],
    );
  }
}

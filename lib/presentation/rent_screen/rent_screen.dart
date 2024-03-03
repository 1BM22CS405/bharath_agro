import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPreviousIcon,
                                    height: 25.v,
                                    width: 26.h,
                                    margin: EdgeInsets.only(bottom: 63.v),
                                    onTap: () {
                                      onTapImgPreviousIcon(context);
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant.imgBharatagrologo1,
                                    height: 87.v,
                                    width: 100.h,
                                    radius: BorderRadius.circular(10.h),
                                    margin: EdgeInsets.only(left: 82.h))
                              ])),
                      SizedBox(height: 22.v),
                      Container(
                          margin: EdgeInsets.only(right: 3.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 19.v),
                          decoration: AppDecoration.fillBlueGrayEf.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL40),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                    width: 175.h,
                                    child: Divider(indent: 125.h))),
                            SizedBox(height: 31.v),
                            Text("Rent", style: theme.textTheme.headlineSmall),
                            SizedBox(height: 23.v),
                            _buildToggleFormAndRentAndThree(context),
                            SizedBox(height: 23.v)
                          ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildToggleFormAndRentAndThree(BuildContext context) {
    return Container(
        width: 309.h,
        margin: EdgeInsets.only(right: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 25.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomElevatedButton(
              text: "1 MONTH", margin: EdgeInsets.only(left: 5.h)),
          SizedBox(height: 46.v),
          CustomElevatedButton(
              text: "3 MONTHS", margin: EdgeInsets.only(left: 5.h, right: 2.h)),
          SizedBox(height: 47.v),
          CustomElevatedButton(
              text: "6 MONTHS", margin: EdgeInsets.only(left: 5.h, right: 2.h)),
          SizedBox(height: 42.v)
        ]));
  }

  /// Navigates to the sensorsScreen when the action is triggered.
  onTapImgPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sensorsScreen);
  }
}

import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SensorsScreen extends StatelessWidget {
  const SensorsScreen({Key? key}) : super(key: key);

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
                          padding: EdgeInsets.only(left: 20.h),
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
                                    margin: EdgeInsets.only(left: 79.h))
                              ])),
                      SizedBox(height: 22.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 19.v),
                          decoration: AppDecoration.fillBlueGrayEf.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                        width: 175.h,
                                        child: Divider(indent: 125.h))),
                                SizedBox(height: 38.v),
                                Text("Sensor",
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 35.v),
                                _buildFour(context),
                                SizedBox(height: 17.v),
                                _buildBUY(context),
                                SizedBox(height: 17.v),
                                _buildRENT(context)
                              ])),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildTemperatureButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Temperature", margin: EdgeInsets.only(left: 6.h));
  }

  /// Section Widget
  Widget _buildPhSensorButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Ph Sensor", margin: EdgeInsets.only(left: 6.h));
  }

  /// Section Widget
  Widget _buildNpkButton(BuildContext context) {
    return CustomElevatedButton(
        text: "NPK", margin: EdgeInsets.only(left: 6.h));
  }

  /// Section Widget
  Widget _buildMoistureButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Moisture", margin: EdgeInsets.only(left: 6.h));
  }

  /// Section Widget
  Widget _buildFour(BuildContext context) {
    return Container(
        width: 310.h,
        padding: EdgeInsets.symmetric(horizontal: 54.h, vertical: 20.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder30),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              _buildTemperatureButton(context),
              SizedBox(height: 30.v),
              _buildPhSensorButton(context),
              SizedBox(height: 30.v),
              _buildNpkButton(context),
              SizedBox(height: 30.v),
              _buildMoistureButton(context)
            ]));
  }

  /// Section Widget
  Widget _buildBUY(BuildContext context) {
    return CustomElevatedButton(
        text: "BUY",
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumComfortaa_1);
  }

  /// Section Widget
  Widget _buildRENT(BuildContext context) {
    return CustomElevatedButton(
        text: "RENT",
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumComfortaa_1,
        onPressed: () {
          onTapRENT(context);
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapImgPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the rentScreen when the action is triggered.
  onTapRENT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rentScreen);
  }
}

import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 48.v),
                child: Column(children: [
                  Container(
                      height: 140.adaptSize,
                      width: 140.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 21.v),
                      decoration: AppDecoration.fillBlueGrayEf.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder70),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFarmerIcon,
                          height: 97.adaptSize,
                          width: 97.adaptSize,
                          alignment: Alignment.centerRight)),
                  SizedBox(height: 21.v),
                  Text("Farmer",
                      style: CustomTextStyles.headlineSmallOnErrorContainer_1),
                  SizedBox(height: 33.v),
                  Text("BharatAgro", style: theme.textTheme.displayMedium),
                  SizedBox(height: 95.v),
                  Container(
                      height: 140.adaptSize,
                      width: 140.adaptSize,
                      padding: EdgeInsets.all(21.h),
                      decoration: AppDecoration.fillBlueGrayEf.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder70),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCustomerIcon,
                          height: 97.adaptSize,
                          width: 97.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 21.v),
                  Text("AgriGuru",
                      style: CustomTextStyles.headlineSmallOnErrorContainer_1),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        height: 59.v,
        text: "Get Started >",
        buttonStyle: CustomButtonStyles.fillOnPrimary,
        buttonTextStyle: CustomTextStyles.titleMediumComfortaa,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }
}

import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends StatelessWidget {
  SignUpPageScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1063.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 1063.v,
                                  width: 803.h,
                                  decoration: BoxDecoration(
                                      color: theme.colorScheme.primary))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 16.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 20.h),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapPreviousIcon(
                                                            context);
                                                      },
                                                      child: Container(
                                                          height: 23.v,
                                                          width: 25.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 1.v,
                                                                  bottom: 63.v),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      ImageConstant
                                                                          .imgPreviousIcon23x25),
                                                                  fit: BoxFit
                                                                      .cover)))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBharatagrologo1,
                                                      height: 87.v,
                                                      width: 100.h,
                                                      radius:
                                                          BorderRadius.circular(
                                                              10.h),
                                                      margin: EdgeInsets.only(
                                                          left: 80.h))
                                                ])),
                                        SizedBox(height: 22.v),
                                        _buildUserProfileSection(context)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildFormSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 30.h, top: 19.v, right: 30.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 5.v,
                      width: 50.h,
                      margin: EdgeInsets.only(left: 119.h),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onErrorContainer,
                          borderRadius: BorderRadius.circular(2.h))),
                  SizedBox(height: 23.v),
                  Text("Sign Up", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text("ENTER OTP".toUpperCase(),
                          style: CustomTextStyles.bodyMedium_1)),
                  SizedBox(height: 16.v),
                  CustomTextFormField(
                      controller: passwordController,
                      hintText: "xxxxxx",
                      textInputAction: TextInputAction.done,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                      fillColor: appTheme.whiteA700),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "Verify",
                      margin: EdgeInsets.symmetric(horizontal: 21.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumComfortaa_1,
                      alignment: Alignment.center)
                ])));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return SizedBox(
        height: 570.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 570.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray900Ef,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40.h))))),
          _buildFormSection(context)
        ]));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}

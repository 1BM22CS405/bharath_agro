import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:bharath_s_application14/widgets/app_bar/appbar_subtitle.dart';
import 'package:bharath_s_application14/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bharath_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileFarmerScreen extends StatelessWidget {
  ProfileFarmerScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900Ef,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Form(
                          key: _formKey,
                          child: SizedBox(
                              height: 711.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 32.h,
                                                vertical: 112.v),
                                            decoration: AppDecoration.fillPrimary
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .customBorderTL45),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text("Name:",
                                                      style: CustomTextStyles
                                                          .titleMediumComfortaaSemiBold),
                                                  SizedBox(height: 7.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 52.h),
                                                      child: CustomTextFormField(
                                                          controller:
                                                          nameController,
                                                          hintText: "Enter your name here",
                                                          hintStyle: CustomTextStyles.bodyMedium_1,
                                                          borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .underLineOnErrorContainer,
                                                          filled: false
                                                      )),
                                                  SizedBox(height: 27.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text("Phone Number:",
                                                          style: CustomTextStyles
                                                              .titleMediumComfortaaSemiBold)),
                                                  SizedBox(height: 7.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, right: 52.h),
                                                      child: CustomTextFormField(
                                                          controller:
                                                          phoneNumberController,
                                                          hintText: "Enter your phone number",
                                                          hintStyle: CustomTextStyles.bodyMedium_1,
                                                          textInputType:
                                                          TextInputType.phone,
                                                          borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .underLineOnErrorContainer,
                                                          filled: false)),
                                                  SizedBox(height: 26.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Text(
                                                          "Aadhar Card Number:",
                                                          style: CustomTextStyles
                                                              .titleMediumComfortaaSemiBold)),
                                                  SizedBox(height: 18.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h, right: 52.h),
                                                      child: CustomTextFormField(
                                                          controller:
                                                          phoneNumberController,
                                                          hintText: "Enter your Aadhar number",
                                                          hintStyle: CustomTextStyles.bodyMedium_1,
                                                          textInputType:
                                                          TextInputType.phone,
                                                          borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .underLineOnErrorContainer,
                                                          filled: false)),
                                                  // Text("7356 8362 9354 9543",
                                                  //     style: CustomTextStyles
                                                  //         .titleMediumComfortaaOnErrorContainer),
                                                  SizedBox(height: 3.v),
                                                  // Divider(
                                                  //     color: theme.colorScheme
                                                  //         .onErrorContainer,
                                                  //     indent: 2.h,
                                                  //     endIndent: 52.h),
                                                  SizedBox(height: 29.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 2.h),
                                                      child: Text("Address:",
                                                          style: CustomTextStyles
                                                              .titleMediumComfortaaSemiBold)),
                                                  SizedBox(height: 12.v),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 56.h),
                                                      child: CustomTextFormField(
                                                          controller:
                                                          addressController,
                                                          hintText:
                                                          "Enter your address here",
                                                          hintStyle: CustomTextStyles.bodyMedium_1,
                                                          textInputAction:
                                                          TextInputAction
                                                              .done,
                                                          borderDecoration:
                                                          TextFormFieldStyleHelper
                                                              .underLineOnErrorContainer,
                                                          filled: false)),
                                                  SizedBox(height: 42.v)
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                        ImageConstant.imgProfilePicture,
                                        height: 87.v,
                                        width: 95.h,
                                        radius: BorderRadius.circular(47.h),
                                        alignment: Alignment.topCenter,
                                        margin: EdgeInsets.only(top: 50.v))
                                  ])))))
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgPreviousIcon,
            margin: EdgeInsets.only(left: 20.h, top: 17.v, bottom: 4.v),
            onTap: () {
              onTapPreviousIcon(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgEditing1,
              margin: EdgeInsets.fromLTRB(21.h, 4.v, 16.h, 2.v)),
          AppbarSubtitle(
              text: "Edit",
              margin: EdgeInsets.only(left: 9.h, top: 4.v, right: 37.h))
        ]);
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}

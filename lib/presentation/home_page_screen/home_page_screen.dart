import 'package:bharath_s_application14/core/app_export.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
                child: Column(children: [
                  _buildOptionsCard(context),
                  SizedBox(height: 86.v),
                  SizedBox(
                      height: 213.v,
                      width: 198.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 213.v,
                                width: 198.h,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray900Ef,
                                    borderRadius:
                                        BorderRadius.circular(106.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgFarmerIcon,
                            height: 147.v,
                            width: 137.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 25.h))
                      ])),
                  SizedBox(height: 39.v),
                  Text("HOME",
                      style: CustomTextStyles.headlineSmallOnErrorContainer_1),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildOptionsCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
        decoration: AppDecoration.outlineOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapProfile(context);
                        },
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGgProfile,
                              height: 40.adaptSize,
                              width: 40.adaptSize),
                          SizedBox(height: 18.v),
                          Text("Profile".toUpperCase(),
                              style: theme.textTheme.bodyMedium)
                        ])),
                    Padding(
                        padding: EdgeInsets.only(top: 13.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              height: 35.adaptSize,
                              width: 35.adaptSize),
                          SizedBox(height: 8.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtLogOUT(context);
                              },
                              child: Text("log OUT".toUpperCase(),
                                  style: theme.textTheme.bodyMedium))
                        ]))
                  ])),
          SizedBox(height: 54.v),
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBxAnalyse,
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          onTap: () {
                            onTapImgBxAnalyse(context);
                          }),
                      SizedBox(height: 4.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtCropAnalysis(context);
                          },
                          child: SizedBox(
                              width: 72.h,
                              child: Text("Crop \nanalysis".toUpperCase(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium)))
                    ]),
                    Spacer(flex: 54),
                    Padding(
                        padding: EdgeInsets.only(bottom: 14.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgTrack,
                                  height: 40.adaptSize,
                                  width: 40.adaptSize,
                                  margin: EdgeInsets.only(left: 15.h)),
                              SizedBox(height: 7.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtMYCROPS(context);
                                  },
                                  child: Text("MY CROPS".toUpperCase(),
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    Spacer(flex: 45),
                    Padding(
                        padding: EdgeInsets.only(bottom: 13.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMaterialSymbol,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 13.h),
                              onTap: () {
                                onTapImgMaterialSymbol(context);
                              }),
                          SizedBox(height: 8.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtSensors(context);
                              },
                              child: Text("sensors".toUpperCase(),
                                  style: theme.textTheme.bodyMedium))
                        ]))
                  ]))
        ]));
  }

  /// Navigates to the profileFarmerScreen when the action is triggered.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileFarmerScreen);
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapTxtLogOUT(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginPageScreen);
  }

  /// Navigates to the cropAnalysisScreen when the action is triggered.
  onTapImgBxAnalyse(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cropAnalysisScreen);
  }

  /// Navigates to the cropAnalysisScreen when the action is triggered.
  onTapTxtCropAnalysis(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cropAnalysisScreen);
  }

  /// Navigates to the cropDetailsFarmerViewScreen when the action is triggered.
  onTapTxtMYCROPS(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cropDetailsFarmerViewScreen);
  }

  /// Navigates to the sensorsScreen when the action is triggered.
  onTapImgMaterialSymbol(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sensorsScreen);
  }

  /// Navigates to the sensorsScreen when the action is triggered.
  onTapTxtSensors(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sensorsScreen);
  }
}

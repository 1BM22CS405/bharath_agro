import '../crop_details_farmer_view_screen/widgets/userprofile_item_widget.dart';
import 'package:bharath_s_application14/core/app_export.dart';
import 'package:flutter/material.dart';

class CropDetailsFarmerViewScreen extends StatelessWidget {
  const CropDetailsFarmerViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900Ef,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 82.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgPreviousIcon,
                                    height: 25.v,
                                    width: 26.h,
                                    margin: EdgeInsets.only(
                                        top: 10.v, bottom: 113.v),
                                    onTap: () {
                                      onTapImgPreviousIcon(context);
                                    }),
                                Container(
                                    height: 148.v,
                                    width: 171.h,
                                    margin: EdgeInsets.only(left: 61.h),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCropImage,
                                              height: 117.v,
                                              width: 171.h,
                                              alignment: Alignment.topCenter),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 1.h),
                                                  child: Text("Tomato",
                                                      style: theme.textTheme
                                                          .displaySmall)))
                                        ]))
                              ])),
                      SizedBox(height: 49.v),
                      Container(
                          padding: EdgeInsets.all(17.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 98.h),
                                    child: Text("My Crops",
                                        style: CustomTextStyles
                                            .titleMediumComfortaaSemiBold_1)),
                                SizedBox(height: 24.v),
                                _buildUserProfile(context),
                                SizedBox(height: 24.v)
                              ]))
                    ]))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 9.5.v),
              child: SizedBox(
                  width: 323.h,
                  child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: theme.colorScheme.onPrimary.withOpacity(0.17))));
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapImgPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }
}

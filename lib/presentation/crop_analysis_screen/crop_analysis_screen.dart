import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/app_bar/appbar_leading_image.dart';
import 'package:bharath_s_application14/widgets/app_bar/appbar_title.dart';
import 'package:bharath_s_application14/widgets/app_bar/custom_app_bar.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CropAnalysisScreen extends StatelessWidget {
  CropAnalysisScreen({Key? key}) : super(key: key);

  TextEditingController temperatureController = TextEditingController();

  TextEditingController phController = TextEditingController();

  TextEditingController soilMoistureController = TextEditingController();

  TextEditingController nitrogenController = TextEditingController();

  TextEditingController phosphorousController = TextEditingController();

  TextEditingController potassiumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900Ef,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: 356.h,
                  margin: EdgeInsets.only(top: 10.v, right: 4.h),
                  padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
                  decoration: AppDecoration.fillPrimary
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Temperature :",
                                style: CustomTextStyles.titleLargeRegular))),
                    SizedBox(height: 3.v),
                    _buildTemperature(context),
                    SizedBox(height: 27.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Ph :",
                                style: CustomTextStyles.titleLargeRegular))),
                    SizedBox(height: 5.v),
                    _buildPh(context),
                    SizedBox(height: 33.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text("Soil Moisture :",
                                style: theme.textTheme.titleLarge))),
                    SizedBox(height: 6.v),
                    _buildSoilMoisture(context),
                    SizedBox(height: 35.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("Nitrogen",
                                style: theme.textTheme.titleLarge))),
                    SizedBox(height: 13.v),
                    _buildNitrogen(context),
                    SizedBox(height: 35.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("Phosphorous",
                                style: theme.textTheme.titleLarge))),
                    SizedBox(height: 13.v),
                    _buildPhosphorous(context),
                    SizedBox(height: 33.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("Potassium",
                                style: theme.textTheme.titleLarge))),
                    SizedBox(height: 15.v),
                    _buildPotassium(context),
                    SizedBox(height: 30.v),
                    _buildCheck(context),
                    SizedBox(height: 5.v)
                  ]))
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgPreviousIcon,
            margin: EdgeInsets.only(left: 20.h, top: 12.v, bottom: 18.v),
            onTap: () {
              onTapPreviousIcon(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Crop Analysis"));
  }

  /// Section Widget
  Widget _buildTemperature(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: temperatureController,
            textStyle: CustomTextStyles.bodyMediumOnPrimary,
        ));
  }

  /// Section Widget
  Widget _buildPh(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: phController,
            textStyle: CustomTextStyles.bodyMediumOnPrimary,
        ));
  }

  /// Section Widget
  Widget _buildSoilMoisture(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(controller: soilMoistureController,
          textStyle: CustomTextStyles.bodyMediumOnPrimary,));
  }

  /// Section Widget
  Widget _buildNitrogen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(controller: nitrogenController,
          textStyle: CustomTextStyles.bodyMediumOnPrimary,));
  }

  /// Section Widget
  Widget _buildPhosphorous(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(controller: phosphorousController,
          textStyle: CustomTextStyles.bodyMediumOnPrimary,));
  }

  /// Section Widget
  Widget _buildPotassium(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: CustomTextFormField(
            controller: potassiumController,
            textStyle: CustomTextStyles.bodyMediumOnPrimary,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildCheck(BuildContext context) {
    return CustomElevatedButton(
        height: 49.v,
        width: 106.h,
        text: "Check",
        buttonStyle: CustomButtonStyles.outlineOnPrimary,
        buttonTextStyle: CustomTextStyles.headlineSmallPrimary,
        onPressed: () {
          onTapCheck(context);
        });
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  /// Navigates to the consumerViewScreen when the action is triggered.
  onTapCheck(BuildContext context) async {
    var db = FirebaseFirestore.instance;
    final detail = <String, dynamic>{
      "potassium": potassiumController.text.trim(),
      "soilMoisture": soilMoistureController.text.trim(),
      "nitrogen": nitrogenController.text.trim(),
      "temperature": temperatureController.text.trim(),
      "ph": phController.text.trim(),
      "phosphorous": phosphorousController.text.trim()
    };
    /*await db.collection("crop_details").get().then((event) {
      for (var doc in event.docs) {
        print("${doc.id} => ${doc.data()}");
      }
    });*/

    db.collection("crop_details").add(detail).then((DocumentReference doc) =>
        print('DocumentSnapshot added with ID: ${doc.id}'));
    //Navigator.pushNamed(context, AppRoutes.consumerViewScreen);
  }
}

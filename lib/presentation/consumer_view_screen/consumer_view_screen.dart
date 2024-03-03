import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ConsumerViewScreen extends StatelessWidget {
  ConsumerViewScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.blueGray900Ef,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgPreviousIcon25x26,
                                    height: 25.v,
                                    width: 26.h,
                                    margin: EdgeInsets.only(bottom: 28.v),
                                    onTap: () {
                                      onTapImgPreviousIcon(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 93.h, top: 23.v),
                                    child: Text("Crops",
                                        style: CustomTextStyles
                                            .headlineSmallInterOnErrorContainer))
                              ]))),
                  SizedBox(height: 25.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgBharatagrologo1,
                      height: 116.v,
                      width: 133.h,
                      radius: BorderRadius.circular(10.h)),
                  SizedBox(height: 26.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 23.h, vertical: 55.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Crop Analysis",
                            style:
                                CustomTextStyles.headlineSmallOnErrorContainer),
                        SizedBox(height: 30.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("Recommended Crop :",
                                    style: theme.textTheme.titleLarge))),
                        SizedBox(height: 13.v),
                        CustomTextFormField(
                            controller: editTextController,
                            textInputAction: TextInputAction.done),
                        SizedBox(height: 13.v)
                      ]))
                ]))));
  }

  /// Navigates to the cropAnalysisScreen when the action is triggered.
  onTapImgPreviousIcon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cropAnalysisScreen);
  }
}

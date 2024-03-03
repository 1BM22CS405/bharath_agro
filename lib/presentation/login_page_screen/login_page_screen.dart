import 'package:flutter/material.dart';
import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key}) : super(key: key);

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 1063.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 1063.v,
                        width: 803.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 16.v),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBharatagrologo1,
                              height: 87.v,
                              width: 100.h,
                              radius: BorderRadius.circular(10.h),
                            ),
                            SizedBox(height: 22.v),
                            _buildLoginForm(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    return SizedBox(
      height: 570.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 570.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.blueGray900Ef,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.h)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 29.h, top: 19.v, right: 29.h),
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
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text("Login", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("Phone number".toUpperCase(), style: CustomTextStyles.bodyMedium_1),
                  ),
                  SizedBox(height: 16.v),
                  CustomTextFormField(
                    controller: phoneNumberController,
                    hintText: "ENTER PHONE NUMBER",
                    hintStyle: CustomTextStyles.bodyMediumKarlaOnPrimary,
                    textInputType: TextInputType.phone,
                    borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 27.v),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text("Password".toUpperCase(), style: CustomTextStyles.bodyMedium_1),
                  ),
                  SizedBox(height: 18.v),
                  CustomTextFormField(
                    controller: passwordController,
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                    fillColor: appTheme.whiteA700,
                  ),
                  SizedBox(height: 89.v),
                  CustomElevatedButton(
                    text: "Login",
                    margin: EdgeInsets.only(left: 21.h, right: 22.h),
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.titleMediumComfortaa_1,
                    onPressed: () {
                      onTapLogin(context);
                    },
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 58.v),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        onTapTxtNewUserRegister(context);
                      },
                      child: Text("New User? Register", style: CustomTextStyles.titleMediumComfortaaOnErrorContainer_1),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // onTapLogin(BuildContext context) {
  //   if (_formKey.currentState?.validate() ?? false) {
  //     // Basic authentication check (for demonstration purposes)
  //     if (phoneNumberController.text == "demoUser" && passwordController.text == "demoPassword") {
  //       Navigator.pushNamed(context, AppRoutes.homePageScreen);
  //     } else {
  //       // Display error message for invalid credentials
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text("Invalid credentials. Please try again."),
  //           duration: Duration(seconds: 2),
  //         ),
  //       );
  //     }
  //   }
  // }
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homePageScreen);
  }

  onTapTxtNewUserRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpPageOneScreen);
  }
}

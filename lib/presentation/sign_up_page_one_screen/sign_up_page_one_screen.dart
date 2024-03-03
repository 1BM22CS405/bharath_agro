import 'package:bharath_s_application14/core/app_export.dart';
import 'package:bharath_s_application14/widgets/custom_elevated_button.dart';
import 'package:bharath_s_application14/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Added Firebase Auth
import 'package:flutter/material.dart';

class SignUpPageOneScreen extends StatelessWidget {
  SignUpPageOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
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
                      padding: EdgeInsets.only(left: 30.h, top: 19.v, right: 30.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 5.v,
                            width: 50.h,
                            margin: EdgeInsets.only(left: 120.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer,
                              borderRadius: BorderRadius.circular(2.h),
                            ),
                          ),
                          SizedBox(height: 23.v),
                          Text("Sign Up", style: theme.textTheme.headlineSmall),
                          SizedBox(height: 29.v),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("NAME".toUpperCase(), style: CustomTextStyles.bodyMedium_1),
                          ),
                          SizedBox(height: 16.v),
                          CustomTextFormField(
                            controller: nameController,
                            hintText: "NAME",
                            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                            fillColor: appTheme.whiteA700,
                          ),
                          SizedBox(height: 26.v),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Your Email".toUpperCase(), style: CustomTextStyles.bodyMediumKarla),
                          ),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "ENTER EMAIL",
                            hintStyle: CustomTextStyles.bodyMediumKarlaOnPrimary,
                            textInputType: TextInputType.emailAddress,
                            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                            fillColor: appTheme.whiteA700,
                          ),
                          SizedBox(height: 25.v),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Phone number".toUpperCase(), style: CustomTextStyles.bodyMedium_1),
                          ),
                          SizedBox(height: 14.v),
                          CustomTextFormField(
                            controller: phoneNumberController,
                            hintText: "ENTER PHONE NUMBER",
                            hintStyle: CustomTextStyles.bodyMediumKarlaOnPrimary,
                            textInputType: TextInputType.phone,
                            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                            fillColor: appTheme.whiteA700,
                          ),
                          SizedBox(height: 25.v),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("Password".toUpperCase(), style: CustomTextStyles.bodyMedium_1),
                          ),
                          SizedBox(height: 18.v),
                          CustomTextFormField(
                            controller: passwordController,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                              margin: EdgeInsets.fromLTRB(30.h, 10.v, 18.h, 9.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIconsByRemixIconV250,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(maxHeight: 43.v),
                            obscureText: true,
                            borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL15,
                            fillColor: appTheme.whiteA700,
                          ),
                          SizedBox(height: 58.v),
                          CustomElevatedButton(
                            text: "Sign Up",
                            margin: EdgeInsets.only(left: 22.h, right: 21.h),
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: CustomTextStyles.titleMediumComfortaa_1,
                            onPressed: () {
                              onTapSignUp(context);
                            },
                            alignment: Alignment.center,
                          ),
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
    );
  }

  onTapSignUp(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        // You can access the user information via userCredential.user
        print('User registered: ${userCredential.user?.uid}');

        Navigator.pushNamed(context, AppRoutes.loginPageScreen);
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error: $e"),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }
}

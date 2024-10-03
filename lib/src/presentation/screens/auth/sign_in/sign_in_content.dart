import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/src/config/constants/constants.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_bloc/sign_in_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:popys_pasajero_2024/src/presentation/utils/BlocFormItem.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_elevated_button.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_icon_button.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_image_view.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_text_form_field.dart';

class SignInContent extends StatelessWidget {
  // inicializar el bloc
  SignInState signInState;

  SignInContent(this.signInState, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: signInState.formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 39.h,
                vertical: 28.v,
              ),
              decoration: AppDecoration.fillGray5002,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 29.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgLNeagFica061,
                      height: 70.v,
                      width: 232.h,
                    ),
                    SizedBox(height: 60.v),
                    Text(
                      "Iniciar Sesión",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "Ingresa tus datos para acceder.",
                      style: CustomTextStyles.bodyMediumLight,
                    ),
                    SizedBox(height: 95.v),
                    CustomTextFormField(
                      onChanged: (text) {
                        //ejecutamos el bloc
                        context.read<SignInBloc>().add(EmailChangedEvent(
                            email: BlocFormItem(value: text)));
                      },
                      validator: (value) {
                        return signInState.email.error;
                      },
                      //controller: emailController,
                      hintText: "Email",
                      hintStyle: CustomTextStyles.bodyMediumGray50001,
                      textInputType: TextInputType.emailAddress,
                      autofocus: false,
                    ),
                    SizedBox(height: 20.v),
                    CustomTextFormField(
                      onChanged: (text) {
                        context.read<SignInBloc>().add(PasswordChangedEvent(
                            password: BlocFormItem(value: text)));
                      },
                      validator: (value) {
                        return signInState.password.error;
                      },
                      //controller: passwordLabelController,
                      hintText: "Contraseña",
                      hintStyle: CustomTextStyles.bodyMediumGray50001,
                      textInputAction: TextInputAction.done,
                      autofocus: false,
                    ),
                    SizedBox(height: 31.v),
                    CustomElevatedButton(
                      text: "Ingresar",
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          ColorSchemes.primaryColorScheme.onPrimaryContainer,
                        ),
                      ),
                      onPressed: () {
                        //validamos si el formulario es corecto
                        if (signInState.formKey!.currentState!.validate()) {
                          context.read<SignInBloc>().add(FormSubmitEvent());
                        } else {
                          print('El formulario no es valido');
                        }
                      },
                    ),
                    SizedBox(height: 51.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "|",
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                          TextSpan(
                            text: " OR ",
                            style: CustomTextStyles.titleMediumPrimaryBold,
                          ),
                          TextSpan(
                            text: "|",
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 19.v),
                    SizedBox(
                      width: 89.h,
                      child: Text(
                        "Iniciar Sesión\ncon:",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeNewsreader,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroupOnprimary,
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGoogle,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    alignment: Alignment.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "Google",
                              style: CustomTextStyles.bodyLargeLight,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Column(
                            children: [
                              CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                decoration: IconButtonStyleHelper.fillOnPrimary,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup11488,
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "Apple",
                                style: CustomTextStyles.bodyLargeLight,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 54.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).tSingUpTextDescription,
                            style: CustomTextStyles.bodyLarge16_1,
                          ),
                          TextSpan(
                            text: S.of(context).tSingUpTextCreate,
                            style: CustomTextStyles.titleMediumPrimaryBold,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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
}

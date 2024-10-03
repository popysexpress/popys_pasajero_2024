import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_screen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/bloc/sign_up_bloc.dart';
import 'package:popys_pasajero_2024/src/presentation/utils/BlocFormItem.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_elevated_button.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_image_view.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_text_form_field.dart';

class SignUpContent extends StatelessWidget {
  SignUpState signUpState;

  SignUpContent(this.signUpState, {super.key});

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: signUpState.formKey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width, //d
            //width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillGray5002,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 28.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgLNeagFica061,
                      height: 70.v,
                      width: 232.h,
                    ),
                    SizedBox(height: 30.v),
                    Text(
                      "Crear Cuenta",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "Ingresa tus datos para crear una cuenta.",
                      style: CustomTextStyles.bodyMediumLight,
                    ),
                    SizedBox(height: 25.v),
                    //const Spacer(),
                    _buildNameEditText(context),
                    SizedBox(height: 20.v),
                    _buildLastNameEditText(context),
                    SizedBox(height: 22.v),
                    _buildPhoneNumberEditText(context),
                    SizedBox(height: 21.v),
                    _buildEmailEditText(context),
                    SizedBox(height: 20.v),
                    _buildPasswordEditText(context),
                    SizedBox(height: 20.v),
                    _buildConfirmPasswordEditText(context),
                    SizedBox(height: 47.v),
                    _buildCreateAccountButton(context),
                    SizedBox(height: 48.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).tSingInTextDescription,
                            style: CustomTextStyles.bodyLarge16_1,
                          ),
                          TextSpan(
                            text: S.of(context).tSingIn,
                            style: CustomTextStyles.titleMediumPrimaryBold,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInScreen(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () => goToUrl(
                                'https://popysexpress.com/politica-de-privacidad'),
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontFamily: 'Poppins',
                                  fontSize: 11.0),
                            )),
                        TextButton(
                          onPressed: () => goToUrl(
                              'https://popysexpress.com/terminos-y-condiciones'),
                          child: const Text(
                            'Terms and Conditions',
                            style: TextStyle(
                              color: Colors.indigo,
                              fontFamily: 'Poppins',
                              fontSize: 11.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Al crear una cuenta aceptas nuestros términos y Políticas de Privacidad\nV: $kVersionn Powered by Popy's Express S.R.L.",
                      textScaleFactor: 0.8,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    const SizedBox(height: kDefaultPadding * 1),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context
            .read<SignUpBloc>()
            .add(NameChangedEvent(name: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.name.error;
      },
      hintText: "Nombres",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context
            .read<SignUpBloc>()
            .add(LastnameChangedEvent(lastname: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.lastname.error;
      },
      hintText: "Apellidos",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context
            .read<SignUpBloc>()
            .add(PhoneChangedEvent(phone: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.phone.error;
      },
      hintText: "Número de teléfono",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context
            .read<SignUpBloc>()
            .add(EmailChangedEvent(email: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.email.error;
      },
      hintText: "Email",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      textInputType: TextInputType.emailAddress,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context
            .read<SignUpBloc>()
            .add(PasswordChangedEvent(password: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.password.error;
      },
      hintText: "Contraseña",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      textInputAction: TextInputAction.done,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      onChanged: (text) {
        context.read<SignUpBloc>().add(PasswordConfirmChangedEvent(
            confirmPassword: BlocFormItem(value: text)));
      },
      validator: (value) {
        return signUpState.confirmPassword.error;
      },
      hintText: "Confirmar Contraseña",
      hintStyle: CustomTextStyles.bodyMediumGray50001,
      textInputAction: TextInputAction.done,
      autofocus: false,
    );
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Crear Cuenta",
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          ColorSchemes.primaryColorScheme.onPrimaryContainer,
        ),
      ),
      onPressed: () {
        //validamos si el formulario es corecto
        if (signUpState.formKey!.currentState!.validate()) {
          context.read<SignUpBloc>().add(FormSubmitEvent());
        } else {
          print('El formulario no es valido');
        }
      },
    );
  }
}

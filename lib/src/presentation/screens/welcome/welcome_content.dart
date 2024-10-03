import 'package:flutter/material.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';
import 'package:popys_pasajero_2024/src/config/theme/custom_text_style.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_in/sign_in_screen.dart';
import 'package:popys_pasajero_2024/src/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_elevated_button.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_image_view.dart';
import 'package:popys_pasajero_2024/src/widgets/custom_outlined_button.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          //height: MediaQuery.of(context).size.height,
          //width: MediaQuery.of(context).size.width, //double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 49.v),
              Text(
                "Bienvenid@",
                style: CustomTextStyles.displayMediumBlack900,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 189.h,
                child: Text(
                  "Vive una mejor experiencia \npara compartir",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 38.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup11171,
                height: 274.v,
                width: 428.h,
              ),
              SizedBox(height: 77.v),
              CustomOutlinedButton(
                text: S.of(context).bLogin, //"Iniciar Sesión",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 38.h,
                ),
                buttonStyle: CustomButtonStyles.outlineBlueGray,
                buttonTextStyle: CustomTextStyles.titleMediumBlack900,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                  );
                },
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: S.of(context).bSignup, //"Crear Cuenta",
                buttonStyle: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    ColorSchemes.primaryColorScheme.onPrimaryContainer,
                  ),
                ),
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 38.h,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
              ),
              //salto de linea
              //const SizedBox(height: kDefaultPadding * 5),
              const Spacer(),

              //const SizedBox(height: kDefaultPadding),
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
    );
  }

  _goToSignupScreen(context) async {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => SignupScreen(),
    //   ),
    // );
  }

  _goToSigninScreen() async {
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) => const SignInScreen(),
    //   ),
    // );
  }
}

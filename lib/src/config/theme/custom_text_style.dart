import 'package:flutter/material.dart';
import 'package:popys_pasajero_2024/src/config/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLarge16_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray40002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90002,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get bodyLargeGray50002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get bodyLargeGreen500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.green500,
        fontSize: 16.fSize,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeNewsreader =>
      theme.textTheme.bodyLarge!.newsreader.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeTitilliumWeb =>
      theme.textTheme.bodyLarge!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray40002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray40003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40003,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyMediumGray60003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray60003,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray700Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumSFProDisplayOnPrimary =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumTitilliumWeb => theme.textTheme.bodyMedium!.titilliumWeb;
  static get bodyMediumTitilliumWebBluegray800 =>
      theme.textTheme.bodyMedium!.titilliumWeb.copyWith(
        color: appTheme.blueGray800,
      );
  static get bodyMediumTitilliumWebGray50002 =>
      theme.textTheme.bodyMedium!.titilliumWeb.copyWith(
        color: appTheme.gray50002,
      );
  static get bodyMediumTitilliumWebOnPrimary =>
      theme.textTheme.bodyMedium!.titilliumWeb.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumTitilliumWeb_1 =>
      theme.textTheme.bodyMedium!.titilliumWeb;
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray40002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray50001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallGray60004 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60004,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray70002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray700Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallOnPrimary8 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 8.fSize,
      );
  static get bodySmallSegoeUI => theme.textTheme.bodySmall!.segoeUI;
  static get bodySmallSegoeUIGray50001 =>
      theme.textTheme.bodySmall!.segoeUI.copyWith(
        color: appTheme.gray50001,
        fontWeight: FontWeight.w300,
      );
  // Display text style
  static get displayMediumBlack900 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black900,
      );
  static get displayMediumMedel => theme.textTheme.displayMedium!.medel;
  // Headline text style
  static get headlineMediumPoppins =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        fontSize: 26.fSize,
        fontWeight: FontWeight.w600,
      );
  static get headlineMediumPoppinsMedium =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumPoppinsMedium26 =>
      theme.textTheme.headlineMedium!.poppins.copyWith(
        fontSize: 26.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumTitilliumWebOnPrimary =>
      theme.textTheme.headlineMedium!.titilliumWeb.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w900,
        fontSize: 19,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBluegray900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineSmallLight => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Label text style
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get labelLargePoppinsBluegray40002 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.blueGray40002,
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray50001 => TextStyle(
        color: appTheme.gray50001,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w300,
      ).poppins;
  static get poppinsYellow900 => TextStyle(
        color: appTheme.yellow900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).poppins;
  // Title text style
  static get titleLargeMontserratOnPrimary =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer
            .withOpacity(1), //theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimarySemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeTitilliumWeb =>
      theme.textTheme.titleLarge!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900SemiBold16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray40002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray4000216 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray40002_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get titleMediumDeeporangeA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrangeA400,
        fontSize: 16.fSize,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray60003 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60003,
        fontSize: 16.fSize,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumPink500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimaryBold => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
      );
  static get titleMediumSFProDisplay =>
      theme.textTheme.titleMedium!.sFProDisplay
          .copyWith(fontSize: 17.fSize, color: appTheme.whiteA700);
  static get titleMediumSFProDisplayBluegray800 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.blueGray800,
        fontSize: 17.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTitilliumWeb =>
      theme.textTheme.titleMedium!.titilliumWeb.copyWith(
        fontSize: 12.fSize,
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumTitilliumWebBlack900 =>
      theme.textTheme.titleMedium!.titilliumWeb.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40002,
      );
  static get titleSmallBluegray40003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40003,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallDeeporangeA400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA400,
      );
  static get titleSmallGreenA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.greenA700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallPink500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProDisplayBluegray800 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.blueGray800,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTitilliumWeb =>
      theme.textTheme.titleSmall!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallTitilliumWebBluegray40001 =>
      theme.textTheme.titleSmall!.titilliumWeb.copyWith(
        color: appTheme.blueGray40001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTitilliumWebGray50002 =>
      theme.textTheme.titleSmall!.titilliumWeb.copyWith(
        color: appTheme.gray50002,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallTitilliumWebOnPrimary =>
      theme.textTheme.titleSmall!.titilliumWeb.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallTitilliumWebSemiBold =>
      theme.textTheme.titleSmall!.titilliumWeb.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get segoeUI {
    return copyWith(
      fontFamily: 'Segoe UI',
    );
  }

  TextStyle get medel {
    return copyWith(
      fontFamily: 'Medel',
    );
  }

  TextStyle get titilliumWeb {
    return copyWith(
      fontFamily: 'Titillium Web',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get newsreader {
    return copyWith(
      fontFamily: 'Newsreader',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyMediumKarla => theme.textTheme.bodyMedium!.karla;
  static get bodyMediumKarlaOnPrimary =>
      theme.textTheme.bodyMedium!.karla.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  // Headline text style
  static get headlineSmallInterOnErrorContainer =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallOnErrorContainer_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumComfortaa =>
      theme.textTheme.titleMedium!.comfortaa.copyWith(
        fontSize: 19.fSize,
      );
  static get titleMediumComfortaaOnErrorContainer =>
      theme.textTheme.titleMedium!.comfortaa.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumComfortaaOnErrorContainer_1 =>
      theme.textTheme.titleMedium!.comfortaa.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleMediumComfortaaSemiBold =>
      theme.textTheme.titleMedium!.comfortaa.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumComfortaaSemiBold_1 =>
      theme.textTheme.titleMedium!.comfortaa.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumComfortaa_1 => theme.textTheme.titleMedium!.comfortaa;
}

extension on TextStyle {
  TextStyle get karla {
    return copyWith(
      fontFamily: 'Karla',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get comfortaa {
    return copyWith(
      fontFamily: 'Comfortaa',
    );
  }
}

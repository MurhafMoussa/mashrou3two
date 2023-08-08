import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mashrou3two/core/resources/border_manager.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';
import 'package:mashrou3two/core/resources/font_manager.dart';
import 'package:mashrou3two/core/resources/padding_manager.dart';
import 'package:mashrou3two/core/resources/text_style_manager.dart';

ThemeData getApplicationThemeData() => ThemeData.light().copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: ColorManager.lightGreen,
        onPrimary: ColorManager.white,
        secondary: ColorManager.darkGreen,
        onSecondary: ColorManager.lightGreen,
        error: ColorManager.red,
        onError: ColorManager.white,
        background: ColorManager.darkGray,
        onBackground: ColorManager.lightGreen,
        onSurface: ColorManager.white,
        surface: ColorManager.lightGreen,
      ),
      scaffoldBackgroundColor: ColorManager.white,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        iconTheme: IconThemeData(
          color: ColorManager.white,
        ),
      ),
      textTheme: TextTheme(
        /// text style for buttons ex : textbutton , outlined ..
        labelLarge: getMeduimTextStyle(
          fontSize: FontSizesManager.s20,
          height: FontHeightsManager.h100,
        ),
        labelMedium: getMeduimTextStyle(
          fontSize: FontSizesManager.s14,
          height: FontHeightsManager.h130,
        ),

        ///for tiny text like (1min ago)
        labelSmall: getMeduimTextStyle(
          fontSize: FontSizesManager.s10,
          height: FontHeightsManager.h130,
          letterSpacing: FontLettersSpacingManager.lZero,
        ),

        ///for text inputs and list tile title
        bodyLarge: getMeduimTextStyle(
          fontSize: FontSizesManager.s18,
          height: FontHeightsManager.h130,
        ),

        ///the normal text in the scaffold body and list tile subtitle
        bodyMedium: getMeduimTextStyle(
          fontSize: FontSizesManager.s16,
          height: FontHeightsManager.h120,
        ),

        /// for error text and small text in the scaffold body
        bodySmall: getRegularTextStyle(
          fontSize: FontSizesManager.s14,
          height: FontHeightsManager.h120,
        ),

        titleLarge: getMeduimTextStyle(
          fontSize: FontSizesManager.s24,
          height: FontHeightsManager.h130,
        ),

        ///for hint text
        titleMedium: getRegularTextStyle(
          color: ColorManager.gray,
          fontSize: FontSizesManager.s22,
          height: FontHeightsManager.h130,
        ),
        headlineLarge: getRegularTextStyle(
          fontSize: FontSizesManager.s72,
          height: FontHeightsManager.h90,
          letterSpacing: FontLettersSpacingManager.lMinus2,
        ),
        headlineMedium: getMeduimTextStyle(
          fontSize: FontSizesManager.s48,
          height: FontHeightsManager.h95,
          letterSpacing: FontLettersSpacingManager.lMinus2,
        ),
        headlineSmall: getRegularTextStyle(
          fontSize: FontSizesManager.s32,
          height: FontHeightsManager.h95,
          letterSpacing: FontLettersSpacingManager.lMinus2,
        ),
      ).apply(
        bodyColor: ColorManager.black,
        displayColor: ColorManager.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: ColorManager.white,
        elevation: 0,
        selectedItemColor: ColorManager.darkGreen,
        unselectedItemColor: ColorManager.gray,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        errorMaxLines: 2,
        contentPadding: PaddingManager.contentPaddingV12H16,
        suffixIconColor: ColorManager.lightGreen,
        prefixIconColor: ColorManager.lightGreen,
        hintStyle: getRegularTextStyle(
          fontSize: FontSizesManager.s14,
        ),
      ),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(
          side: MaterialStatePropertyAll(
            BorderSide(
              color: ColorManager.darkGreen,
            ),
          ),
          shape: MaterialStatePropertyAll(
            StadiumBorder(),
          ),
          foregroundColor: MaterialStatePropertyAll(
            ColorManager.darkGreen,
          ),
        ),
      ),
      filledButtonTheme: const FilledButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            StadiumBorder(),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusManager.all10,
            ),
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: ColorManager.darkGreen,
        selectionHandleColor: ColorManager.darkGreen,
        selectionColor: ColorManager.darkGreen,
      ),
      listTileTheme: const ListTileThemeData(
        horizontalTitleGap: 0,
        iconColor: ColorManager.darkGreen,
      ),
      dividerTheme: const DividerThemeData(
        color: ColorManager.lightGray,
        thickness: 1,
      ),
      iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.transparent,
          ),
          iconColor: MaterialStatePropertyAll(
            ColorManager.lightGreen,
          ),
        ),
      ),
    );
// : ThemeData.dark().copyWith(
//     colorScheme: const ColorScheme(
//       brightness: Brightness.dark,
//       primary: ColorManager.primary,
//       onPrimary: ColorManager.white,
//       secondary: ColorManager.white,
//       onSecondary: ColorManager.primary,
//       error: ColorManager.red,
//       onError: ColorManager.white,
//       background: ColorManager.white,
//       onBackground: ColorManager.primary,
//       onSurface: ColorManager.primary,
//       surface: ColorManager.white,
//     ),
//     scaffoldBackgroundColor: ColorManager.scaffoldColorInKinkyMode,
//     disabledColor: ColorManager.disabled,
//     cardTheme: CardTheme(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         borderRadius: appSmallBorderRaduis,
//         side: const BorderSide(
//           color: ColorManager.unSelectedComponent,
//         ),
//       ),
//       color: ColorManager.kinkyModeDarkColor,
//     ),
//     appBarTheme: const AppBarTheme(
//       color: ColorManager.scaffoldColorInKinkyMode,
//       centerTitle: true,
//       elevation: 0,
//       scrolledUnderElevation: 0,
//       iconTheme: IconThemeData(
//         color: ColorManager.white,
//       ),
//     ),
//     textTheme: TextTheme(
//       /// text style for buttons ex : textbutton , outlined ..
//       labelLarge: getMeduimTextStyle(
//         fontSize: FontSizesManager.s20,
//         color: ColorManager.white,
//         height: FontHeightsManager.h100,
//       ),
//       labelMedium: getMeduimTextStyle(
//         fontSize: FontSizesManager.s14,
//         color: ColorManager.white,
//         height: FontHeightsManager.h130,
//       ),
//
//       ///for tiny text like (1min ago)
//       labelSmall: getMeduimTextStyle(
//         fontSize: FontSizesManager.s10,
//         height: FontHeightsManager.h130,
//         letterSpacing: FontLettersSpacingManager.lZero,
//       ),
//
//       ///for text inputs and list tile title
//       bodyLarge: getMeduimTextStyle(
//         fontSize: FontSizesManager.s18,
//         height: FontHeightsManager.h130,
//       ),
//
//       ///the normal text in the scaffold body and list tile subtitle
//       bodyMedium: getMeduimTextStyle(
//         fontSize: FontSizesManager.s16,
//         height: FontHeightsManager.h120,
//       ),
//
//       /// for error text and small text in the scaffold body
//       bodySmall: getRegularTextStyle(
//         fontSize: FontSizesManager.s14,
//         height: FontHeightsManager.h120,
//       ),
//
//       titleLarge: getMeduimTextStyle(
//         fontSize: FontSizesManager.s24,
//         height: FontHeightsManager.h130,
//       ),
//
//       ///for hint text
//       titleMedium: getRegularTextStyle(
//         color: ColorManager.disabled,
//         fontSize: FontSizesManager.s22,
//         height: FontHeightsManager.h130,
//       ),
//       headlineLarge: getRegularTextStyle(
//         fontSize: FontSizesManager.s72,
//         height: FontHeightsManager.h90,
//         letterSpacing: FontLettersSpacingManager.lMinus2,
//       ),
//       headlineMedium: getMeduimTextStyle(
//         fontSize: FontSizesManager.s48,
//         height: FontHeightsManager.h95,
//         letterSpacing: FontLettersSpacingManager.lMinus2,
//       ),
//       headlineSmall: getRegularTextStyle(
//         fontSize: FontSizesManager.s32,
//         height: FontHeightsManager.h95,
//         letterSpacing: FontLettersSpacingManager.lMinus2,
//       ),
//     ).apply(
//       bodyColor: ColorManager.white,
//       displayColor: ColorManager.white,
//     ),
//     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
//       backgroundColor: ColorManager.scaffoldColorInKinkyMode,
//       elevation: 0,
//       selectedItemColor: ColorManager.kinkyModeColor,
//       unselectedItemColor: ColorManager.unSelectedComponentInDarkMode,
//       showUnselectedLabels: true,
//       showSelectedLabels: true,
//     ),
//     radioTheme: const RadioThemeData(),
//     useMaterial3: true,
//     // inputDecorationTheme: InputDecorationTheme(
//     //   errorMaxLines: 2,
//     //   errorBorder: customOutlineInputBorder(
//     //     ColorManager.lightGrayBorder,
//     //   ),
//     //   focusedBorder: customOutlineInputBorder(
//     //     ColorManager.disabled,
//     //   ),
//     //   enabledBorder: customOutlineInputBorder(
//     //     ColorManager.lightGrayBorder,
//     //   ),
//     //   focusedErrorBorder: customOutlineInputBorder(
//     //     ColorManager.red,
//     //   ),
//     //   prefixIconColor: ColorManager.primary,
//     //   filled: true,
//     //   fillColor: ColorManager.lightGrayBackground,
//     //   contentPadding: textFieldContentPadding,
//     //   // We set the height to zero because we just want the validation
//     //   // the tooltip will contain all the description that the user
//     //   // needs to know about the valid input
//     //   hintStyle: getRegularTextStyle(
//     //     fontSize: FontSizesManager.s14,
//     //   ),
//     //   errorStyle: const TextStyle(
//     //     height: 0,
//     //   ),
//     // ),
//     outlinedButtonTheme: const OutlinedButtonThemeData(
//       style: ButtonStyle(
//         side: MaterialStatePropertyAll(
//           BorderSide(
//             color: ColorManager.kinkyModeColor,
//           ),
//         ),
//         shape: MaterialStatePropertyAll(
//           StadiumBorder(),
//         ),
//         foregroundColor: MaterialStatePropertyAll(
//           ColorManager.white,
//         ),
//       ),
//     ),
//     filledButtonTheme: const FilledButtonThemeData(
//       style: ButtonStyle(
//         shape: MaterialStatePropertyAll(
//           StadiumBorder(),
//         ),
//       ),
//     ),
//     textSelectionTheme: const TextSelectionThemeData(
//       cursorColor: ColorManager.white,
//       selectionHandleColor: ColorManager.white,
//       selectionColor: ColorManager.white,
//     ),
//     listTileTheme: const ListTileThemeData(
//       horizontalTitleGap: 0,
//       iconColor: ColorManager.white,
//     ),
//     dividerTheme: const DividerThemeData(
//       color: ColorManager.disabled,
//     ),
//     iconButtonTheme: const IconButtonThemeData(
//       style: ButtonStyle(
//         backgroundColor: MaterialStatePropertyAll(
//           Colors.transparent,
//         ),
//         iconColor: MaterialStatePropertyAll(
//           ColorManager.white,
//         ),
//       ),
//     ),
//   );

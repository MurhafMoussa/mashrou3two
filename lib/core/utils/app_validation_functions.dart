import 'package:mashrou3two/core/extensions/string_extensions.dart';
import 'package:mashrou3two/core/utils/app_utils.dart';

///* so here we just validate the user input .. the validation instructuins
///* will be displayed in the tool tip

class AppValidation {
  AppValidation._();
  static String? validatePasswordConfirmation(
    String? passwordConfirmation,
    String? password,
  ) {
    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      return 'password confirmation field is required';
    } else if (passwordConfirmation != password) {
      return "password confirmation doesn't match";
    } else {
      return null;
    }
  }

//   static String? validatePhoneNumber(String? value, BuildContext context) {
//     if (value == null || value.isEmpty) {
//       return AppLocalizations.of(context).pleaseEnterPhoneNumber;
//     } else if (!value.isNumericOnly) {
//       return AppLocalizations.of(context).pleaseEnterValidNumber;
//     } else {
//       return null;
//     }
//   }

  static String? validatePassword(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'password field is required';
    } else if (value.length < 8) {
      return 'password must be greater than 7 characters';
    } else if (!value.contains(RegExp('(?=.*[A-Za-z])'))) {
      return 'password must contain at least one letter';
    } else if (!value.contains(RegExp('[0-9]'))) {
      return 'password must contain at least one number';
    } else {
      return null;
    }
  }

//   static String? validateOldPassword(String? value, BuildContext context) {
//     if (value == null || value.isEmpty) {
//       return 'Please Enter Old Password';
//     } else if (value.length < 8) {
//       return AppLocalizations.of(context).passwordMustBe8CharactersAtLeast;
//     } else {
//       return null;
//     }
//   }

//   static String? validateNewPassword(String? value, BuildContext context) {
//     if (value == null || value.isEmpty) {
//       return AppLocalizations.of(context).pleaseEnterNewPassword;
//     } else if (value.length < 8) {
//       return AppLocalizations.of(context).passwordMustBe8CharactersAtLeast;
//     } else {
//       return null;
//     }
//   }

//   static String? validateNewPasswordConfirmation(
//     String? passwordConfirmation,
//     String? password,
//     BuildContext context,
//   ) {
//     if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
//       return AppLocalizations.of(context).pleaseConfirmNewPassword;
//     } else if (passwordConfirmation != password) {
//       return AppLocalizations.of(context)
//           .passwordAndConfirmPasswordFieldsDontMatch;
//     } else {
//       return null;
//     }
//   }

  static String? validateFirstName(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'first name is required';
    } else if (value.length < 4) {
      return 'first name must be at least 4 characters';
    } else {
      return null;
    }
  }

  static String? validateLastName(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'last name is required';
    } else if (value.length < 4) {
      return 'last name must be at least 4 characters';
    } else {
      return null;
    }
  }

  static String? validatePhoneNumber(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    } else if (!AppUtils.isPhoneNumber(value)) {
      return 'enter a valid phone number';
    } else {
      return null;
    }
  }

  static String? validateEmail(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return null;
    } else if (!value.isEmail) {
      return 'enter a valid email';
    } else {
      return null;
    }
  }
}

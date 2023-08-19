// ignore_for_file: one_member_abstracts

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

/// String validator
abstract class StringValidator {
  /// If string [value] is valid
  bool isValid(String value);
}

/// {@template validator_utils}
/// Regex validator
/// {@endtemplate}
class RegexValidator implements StringValidator {
  /// {@macro validator_utils}
  RegexValidator({required this.regexSource});

  /// Regex source
  final String regexSource;

  /// value: the input string
  /// returns: true if the input string is a full match for regexSource
  @override
  bool isValid(String value) {
    try {
      final regex = RegExp(regexSource);
      final matches = regex.allMatches(value);
      for (final match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }
      return false;
    } catch (e) {
      // Invalid regex
      assert(false, e.toString());
      return true;
    }
  }
}

/// {@template validator_utils}
/// Phone number validator
/// {@endtemplate}
class PhoneNumberValidator {
  /// Validate pgone number [value]
  static String? validate(String? value) {
    if (value?.isEmpty ?? true) {
      return 'This field is required';
    }
    final formattedValue = value?.replaceAll('-', '');
    if (formattedValue!.contains('+')) {
      return "You don't need to enter country code";
    }
    return null;
  }
}

/// {@template validator_utils}
/// Creates our own [TextInputFormatter] class that we can utilize
/// in our text fields by passing in the `inputFormatters`
/// {@endtemplate}
class ValidatorInputFormatter implements TextInputFormatter {
  /// {@macro validator_utils}
  ValidatorInputFormatter({required this.editingValidator});

  /// Editing validator
  final StringValidator editingValidator;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final oldValueValid = editingValidator.isValid(oldValue.text);
    final newValueValid = editingValidator.isValid(newValue.text);
    if (oldValueValid && !newValueValid) {
      return oldValue;
    }
    return newValue;
  }
}

/// {@template validator_utils}
/// Allows us to validate an email address as its being typed
/// (less strict than submission validator)
/// {@endtemplate}
class EmailEditingRegexValidator extends RegexValidator {
  /// {@macro validator_utils}
  EmailEditingRegexValidator() : super(regexSource: regex);

  /// Regex string
  static const String regex =
      // ignore: use_raw_strings
      '^[a-zA-Z0-9_.+-]*(@([a-zA-Z0-9-]*(\\.[a-zA-Z0-9-]*)?)?)?\$';
}

/// {@template validator_utils}
/// Validates emails on submit
/// {@endtemplate}
class EmailSubmitRegexValidator extends RegexValidator {
  /// {@macro validator_utils}
  EmailSubmitRegexValidator() : super(regexSource: regex);

  /// Regex string
  static const String regex =
      // ignore: use_raw_strings
      '(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-]+\$)';
}

/// {@template validator_utils}
/// Password Submit Regex Validator
/// {@endtemplate}
class PasswordSubmitRegexValidator extends RegexValidator {
  /// {@macro validator_utils}
  PasswordSubmitRegexValidator() : super(regexSource: regex);

  /// Regex string
  static const String regex =
      // ignore: use_raw_strings
      '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}\$';
}

/// {@template validator_utils}
/// Url Regex Validator
/// {@endtemplate}
class UrlRegexValidator extends RegexValidator {
  /// {@macro validator_utils}
  UrlRegexValidator() : super(regexSource: regex);

  /// Regex string
  static const String regex =
      r'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)';
}

/// {@template validator_utils}
/// Date Regex Validator
/// {@endtemplate}
class DateRegexValidator extends RegexValidator {
  /// {@macro validator_utils}
  DateRegexValidator() : super(regexSource: regex);

  /// Regex string
  static const String regex =
      r'^(0[1-9]|1[0-2])\/(0[1-9]|[1-2][0-9]|3[0-1])\/[0-9]{4}$';
}

/// {@template validator_utils}
/// Birthday Validator
/// {@endtemplate}
class BirthdayValidator {
  /// Birthdate format
  static const birthdateFormat = 'dd/MM/yyyy';

  /// Birthdate formatter
  static final DateFormat birthdateFormatter = DateFormat(birthdateFormat);

  /// Validate the birthday date - [value]
  /// Returns error reponses provided in the parameters if invalid
  /// [minimumAgeMessage], [invalidDateMessage], [emptyDateMessage]
  static String? validate(
    String? value, {
    String? minimumAgeMessage = '*You must be 13 years or older',
    String? invalidDateMessage = 'Invalid birthday',
    String? emptyDateMessage = 'Please fill in your birthday',
  }) {
    if (value != null && value.isNotEmpty) {
      if (!DateRegexValidator().isValid(value)) {
        return invalidDateMessage;
      }
      final date = birthdateFormatter.parse(value);
      final now = DateTime.now();
      final eligibleDate = DateTime(now.year - 13, now.month, now.day);
      return date.isAfter(eligibleDate) ? minimumAgeMessage ?? '' : null;
    }
    return emptyDateMessage;
  }
}

import 'package:intl/intl.dart';

/// {@template p_debouncer}
/// Helper functions for formatters
/// {@endtemplate}
class FormatHelper {
  /// Number formatter
  static final compactNumberFormatter = NumberFormat.compact();

  /// Convert a double [value] to an amount with currency
  /// Example: if value is 50000
  /// It returns $50,000.00
  static String money(double value, {String? currency}) {
    final curr = currency ?? r'$';
    final nf = NumberFormat('#,##0.00', 'en_US');
    return '$curr${nf.format(value)}';
  }

  /// Convert a int [value] to an formatted quantity
  /// Example: if value is 50000
  /// It returns 50,000.00
  static String formatQuantity(int value) {
    final nf = NumberFormat('#,##0', 'en_US');
    return nf.format(value);
  }

  /// Time format in Month day, year
  static String dateFormat(DateTime date) {
    return DateFormat('d MMM y').format(date);
  }
}

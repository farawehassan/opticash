import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.textInputAction,
    this.textInputType,
    this.textCapitalization,
    this.inputFormatters,
    this.autoFillHints,
    this.validator,
    this.onChanged,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled = true,
    this.showCursor = true,
    this.autofocus = false,
    this.hasError = false,
    this.readOnly = false,
    this.radius,
    this.onTap,
  }) : super(key: key);

  final TextEditingController controller;

  final String? hintText;

  final String? labelText;

  final TextInputType? textInputType;

  final TextCapitalization? textCapitalization;

  final TextInputAction? textInputAction;

  final List<TextInputFormatter>? inputFormatters;

  final List<String>? autoFillHints;

  final FormFieldValidator<String>? validator;

  final void Function(String)? onChanged;

  final Widget? suffixIcon;

  final Widget? prefixIcon;

  final bool enabled;

  final bool showCursor;

  final bool autofocus;

  final bool hasError;

  final bool readOnly;

  final double? radius;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType ?? TextInputType.text,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      autofillHints: autoFillHints ?? [],
      enabled: enabled,
      validator: validator,
      onChanged: onChanged,
      style: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.lightBlue,
      ),
      autofocus: autofocus,
      maxLines: textInputType == TextInputType.multiline ? 5 : 1,
      showCursor: showCursor,
      readOnly: readOnly,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        hintStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.grey9E,
        ),
        labelStyle: GoogleFonts.poppins(
          fontSize: 11,
          fontWeight: FontWeight.w400,
          color: AppColors.grey9E,
        ),
        errorStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: AppColors.red,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}

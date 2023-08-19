import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opticash/app/app_colors.dart';
import 'package:opticash/components/components.dart';

class CustomPasswordField extends HookWidget {
  const CustomPasswordField({
    Key? key,
    required this.controller,
    this.hintText,
    this.labelText,
    this.textInputAction,
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
    final isObscured = useState<bool>(true);
    final password = useState<String>('');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.visiblePassword,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          autofillHints: autoFillHints ?? [],
          enabled: enabled,
          validator: validator,
          onChanged: (value) {
            onChanged?.call(value);
            password.value = value;
          },
          obscureText: isObscured.value,
          obscuringCharacter: '●',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.lightBlue,
          ),
          autofocus: autofocus,
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
            suffixIcon: InkWell(
              onTap: () => isObscured.value = !isObscured.value,
              child: isObscured.value
                  ? const Icon(
                      Icons.visibility_rounded,
                      size: 20,
                      color: AppColors.grey9E,
                      semanticLabel: 'Show password icon',
                    )
                  : const Icon(
                      Icons.visibility_off_rounded,
                      size: 20,
                      color: AppColors.grey9E,
                      semanticLabel: 'Hide password icon',
                    ),
            ),
            prefixIcon: prefixIcon,
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
        ),
        if (controller.text.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 11),
            child: PasswordConditionIndicator(
              strength: getStrength(password.value),
              color: getStrengthColor(password.value),
              text: getStrengthText(password.value),
            ),
          ),
      ],
    );
  }

  /// Get strength length
  int getStrength(String text) {
    var strength = 0;
    // If length is valid
    if (text.length >= 8) {
      strength += 1;
    }
    // If it has a symbol
    if (text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      strength += 1;
    }
    // If it has an uppercase letter
    if (text.contains(RegExp('[A-Z]'))) {
      strength += 1;
    }
    // If it has a number
    if (text.contains(RegExp('[0-9]'))) {
      strength += 1;
    }
    return strength;
  }

  /// Get password indicator color based on strength
  Color getStrengthColor(String text) {
    final strength = getStrength(text);
    if (strength >= 3) {
      return const Color.fromRGBO(118, 156, 0, 1);
    } else if (strength >= 2) {
      return AppColors.amber;
    } else {
      return AppColors.red;
    }
  }

  /// Get password indicator text based on strength
  String getStrengthText(String text) {
    final strength = getStrength(text);
    if (strength >= 3) {
      return 'strong';
    } else if (strength >= 2) {
      return 'weak';
    } else {
      return 'poor';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:opticash/components/components.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.onTap,
    required this.text,
    this.theme = const CustomButtonTheme.black(),
    this.loading = false,
    this.child,
  });

  final void Function()? onTap;

  final CustomButtonTheme theme;

  final String text;

  final bool loading;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: theme.buttonColor,
        foregroundColor: theme.foregroundColor,
        disabledBackgroundColor: theme.disabledBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onPressed: !theme.disabled ? onTap : null,
      child: SizedBox(
        width: theme.width,
        height: theme.height,
        child: Center(
          child: loading
              ? const CircleProgressIndicator()
              : child ??
                  Text(
                    text,
                    style: TextStyle(
                      color: theme.textColor,
                      fontSize: theme.fontSize,
                      fontWeight: theme.fontWeight,
                    ),
                  ),
        ),
      ),
    );
  }
}

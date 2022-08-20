import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainedButton extends StatelessWidget {
  final String? label;
  final Widget? labelWidget;
  final VoidCallback? onPressed;
  final bool isFullWidth;
  final bool enable;
  final Color? backgroundColor;
  final bool isLoading;
  final EdgeInsets? contentPadding;

  const ContainedButton({
    Key? key,
    this.label,
    this.onPressed,
    this.isFullWidth = false,
    this.backgroundColor,
    this.enable = true,
    this.isLoading = false,
    this.labelWidget,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isFullWidth ? double.infinity : null,
      child: ElevatedButton(
        onPressed: enable && !isLoading ? onPressed : null,
        style: ElevatedButton.styleFrom(
          padding: contentPadding ??
              const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          elevation: 0,
          primary: backgroundColor,
        ),
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      color: context.theme.colorScheme.primary,
                      strokeWidth: 2.5,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text("Loading..."),
                ],
              )
            : label != null
                ? Text(label!)
                : labelWidget,
      ),
    );
  }
}

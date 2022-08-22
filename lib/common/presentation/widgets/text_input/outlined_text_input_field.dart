import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:assesment/extension/color_scheme_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutlinedTextInputField extends StatefulWidget {
  final String hint;
  final Widget? prefixIcon;
  final bool? isObscure;
  final bool? isEnable;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;

  const OutlinedTextInputField({
    Key? key,
    required this.hint,
    this.textEditingController,
    this.prefixIcon,
    this.isObscure,
    this.isEnable,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  @override
  State<OutlinedTextInputField> createState() => _OutlinedTextInputFieldState();
}

class _OutlinedTextInputFieldState extends State<OutlinedTextInputField> {
  late bool _isObscure;
  late bool _isEnable;

  @override
  void initState() {
    super.initState();
    setState(() {
      _isObscure = widget.isObscure ?? false;
      _isEnable = widget.isEnable ?? true;
    });
  }

  OutlineInputBorder _buildEnabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.theme.colorScheme.borderColor,
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildDisabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.theme.colorScheme.borderColor.withOpacity(0.5),
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.theme.colorScheme.primary,
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: context.theme.colorScheme.error,
        width: 1.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: _isEnable
          ? context.textTheme.bodyText2
          : context.textTheme.bodyText2?.copyWith(
              color: ColorPallete.gray_400,
            ),
      controller: widget.textEditingController,
      enabled: _isEnable,
      obscureText: _isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: _isEnable
            ? context.theme.colorScheme.inputFillColor
            : context.theme.colorScheme.inputFillColor.withOpacity(0.5),
        hintText: widget.hint,
        hintStyle: context.theme.textTheme.bodyText2?.copyWith(
          color: context.theme.colorScheme.borderColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        enabledBorder: _buildEnabledBorder(),
        disabledBorder: _buildDisabledBorder(),
        focusedBorder: _buildFocusedBorder(),
        errorBorder: _buildErrorBorder(),
        prefixIcon: widget.prefixIcon,
        suffixIcon: _isObscure
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: _isObscure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              )
            : null,
        errorText: widget.errorText,
      ),
    );
  }
}

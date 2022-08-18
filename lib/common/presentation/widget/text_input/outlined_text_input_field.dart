import 'package:assesment/core_views/color/color_pallete.dart';
import 'package:assesment/core_views/color/color_scheme_light.dart';
import 'package:assesment/utils/color_utils.dart';
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
        color: TemanJabarColorSchemeLight.borderColor,
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildDisabledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: TemanJabarColorSchemeLight.borderColor.withOpacity(0.5),
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildFocusedBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: TemanJabarColorSchemeLight.primaryColor,
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder _buildErrorBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: TemanJabarColorSchemeLight.errorColor,
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
              color: ColorUtils.fromHex(ColorPallete.gray_400),
            ),
      controller: widget.textEditingController,
      enabled: _isEnable,
      obscureText: _isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: _isEnable
            ? TemanJabarColorSchemeLight.inputFillColor
            : TemanJabarColorSchemeLight.inputFillColor.withOpacity(0.5),
        hintText: widget.hint,
        hintStyle: context.theme.textTheme.bodyText2
            ?.copyWith(color: TemanJabarColorSchemeLight.borderColor),
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

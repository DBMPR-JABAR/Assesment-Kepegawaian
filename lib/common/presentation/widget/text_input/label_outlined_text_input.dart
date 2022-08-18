import 'package:assesment/common/presentation/widget/label/input_label.dart';
import 'package:assesment/common/presentation/widget/text_input/outlined_text_input_field.dart';
import 'package:flutter/material.dart';

class LabelOutlinedTextInput extends StatelessWidget {
  final String label;
  final String hint;
  final bool? isMandatory;
  final Widget? prefixIcon;
  final bool? isObscure;
  final bool? isEnable;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;

  const LabelOutlinedTextInput(
      {Key? key,
      required this.label,
      required this.hint,
      this.isMandatory,
      this.prefixIcon,
      this.isObscure,
      this.isEnable,
      this.errorText,
      this.onChanged,
      this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputLabel(
          label: label,
          isMandatory: isMandatory,
        ),
        const SizedBox(
          height: 8,
        ),
        OutlinedTextInputField(
          hint: hint,
          prefixIcon: prefixIcon,
          isObscure: isObscure,
          isEnable: isEnable,
          errorText: errorText,
          onChanged: onChanged,
          textEditingController: textEditingController,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputLabel extends StatelessWidget {
  final String label;
  final bool? isMandatory;

  const InputLabel({Key? key, required this.label, this.isMandatory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMandatory == true
        ? Row(
            children: [
              Text(
                label,
                style: context.textTheme.bodyText2
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                "(Wajib Diisi)",
                style: TextStyle(
                  color: context.theme.colorScheme.primary,
                  fontSize: 9,
                ),
              ),
            ],
          )
        : Text(
            label,
            style: context.textTheme.bodyText2
                ?.copyWith(fontWeight: FontWeight.w700),
          );
  }
}

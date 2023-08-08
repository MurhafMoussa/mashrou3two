import 'package:flutter/material.dart';
import 'package:mashrou3two/core/extensions/context_extensions.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.textEditingController,
    this.passwordVisibility = false,
    this.suffixIcon,
    required this.validator,
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.textInputAction = TextInputAction.done,
    this.autoFillHints,
    this.readOnly = false,
    this.onTap,
    this.prefixIcon,
  });
  final Iterable<String>? autoFillHints;
  final TextEditingController textEditingController;
  final bool passwordVisibility;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?) validator;
  final TextInputType textInputType;
  final String hintText;
  final bool readOnly;
  final TextInputAction textInputAction;
  final VoidCallback? onTap;
  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.textEditingController,
        obscureText: widget.passwordVisibility,
        autofillHints: widget.autoFillHints,
        readOnly: widget.readOnly,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onTap: widget.onTap,
        keyboardType: widget.textInputType,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: widget.textInputAction,
        decoration: InputDecoration(
          hintText: widget.hintText,
          isCollapsed: true,
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
        ),
        validator: widget.validator,
      );
}

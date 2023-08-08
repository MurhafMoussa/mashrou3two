import 'package:flutter/material.dart';
import 'package:mashrou3two/core/resources/color_manager.dart';
import 'package:mashrou3two/core/resources/constant_values.dart';
import 'package:mashrou3two/core/resources/padding_manager.dart';

class AppButton extends StatelessWidget {
  factory AppButton.filled({
    required VoidCallback? onPressed,
    required Widget content,
    bool withPadding = false,
  }) =>
      AppButton._(
        _ButtonType.filled,
        onPressed: onPressed,
        content: content,
        withHorizontalPadding: withPadding,
      );
  factory AppButton.text({
    required VoidCallback? onPressed,
    required Widget content,
    bool withPadding = false,
  }) =>
      AppButton._(
        _ButtonType.text,
        onPressed: onPressed,
        content: content,
        withHorizontalPadding: withPadding,
      );
  factory AppButton.outlined({
    required VoidCallback? onPressed,
    required Widget content,
    bool withPadding = false,
  }) =>
      AppButton._(
        _ButtonType.outlined,
        onPressed: onPressed,
        content: content,
        withHorizontalPadding: withPadding,
      );

  const AppButton._(
    this._buttonType, {
    required this.onPressed,
    required this.content,
    this.withHorizontalPadding = false,
  });
  final VoidCallback? onPressed;
  final Widget content;
  final bool withHorizontalPadding;
  final _ButtonType _buttonType;
  @override
  Widget build(BuildContext context) {
    switch (_buttonType) {
      case _ButtonType.filled:
        return Padding(
          padding: withHorizontalPadding
              ? PaddingManager.appHorizontalPadding
              : EdgeInsets.zero,
          child: FilledButton(
            onPressed: onPressed,
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return ColorManager.darkGreen;
                  }
                  return null;
                },
              ),
              backgroundColor: MaterialStateColor.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return ColorManager.darkGreen;
                },
              ),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent),
              foregroundColor:
                  const MaterialStatePropertyAll(ColorManager.white),
            ),
            child: content,
          ),
        );

      case _ButtonType.outlined:
        return Padding(
          padding: withHorizontalPadding
              ? PaddingManager.appHorizontalPadding
              : EdgeInsets.zero,
          child: OutlinedButton(
            onPressed: onPressed,
            child: content,
          ),
        );

      case _ButtonType.text:
        return Padding(
          padding: withHorizontalPadding
              ? PaddingManager.appHorizontalPadding
              : EdgeInsets.zero,
          child: TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  if (states.contains(MaterialState.pressed)) {
                    return ColorManager.darkGreen;
                  }
                  return null;
                },
              ),
              backgroundColor: MaterialStateColor.resolveWith(
                (states) {
                  if (states.contains(MaterialState.disabled)) {
                    return Colors.grey;
                  }
                  return ColorManager.lightGreen;
                },
              ),
              shadowColor: const MaterialStatePropertyAll(Colors.transparent),
              foregroundColor:
                  const MaterialStatePropertyAll(ColorManager.white),
            ),
            child: content,
          ),
        );
    }
  }
}

enum _ButtonType { filled, outlined, text }

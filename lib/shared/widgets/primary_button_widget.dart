import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/shared/widgets/base_button.dart';

class PrimaryButtonWidget extends BaseButtonWidget {
  const PrimaryButtonWidget({
    super.key,
    required super.text,
    required super.onPressed,
    super.isLoading = false,
    super.isDisabled = false,
  }) : super(type: ButtonType.primary);

  @override
  Color getBackgroundColor(ButtonState state) {
    switch (state) {
      case ButtonState.default_:
        return kButtonPrimaryDefaultBg;
      case ButtonState.hover:
        return kButtonPrimaryHoverBg;
      case ButtonState.pressed:
        return kButtonPrimaryPressedBg;
      case ButtonState.disabled:
        return kButtonPrimaryDisabledBg;
      case ButtonState.loading:
        return kButtonPrimaryDefaultBg;
    }
  }

  @override
  Color getForegroundColor(ButtonState state) {
    return state == ButtonState.disabled
        ? kButtonPrimaryDisabledText
        : kButtonPrimaryDefaultText;
  }

  @override
  double getElevation(ButtonState state) {
    return state == ButtonState.pressed ? 0 : 1;
  }
}

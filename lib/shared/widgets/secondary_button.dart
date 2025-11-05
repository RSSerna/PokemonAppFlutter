import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/shared/widgets/base_button.dart';

class SecondaryButtonWidget extends BaseButtonWidget {
  const SecondaryButtonWidget({
    super.key,
    required super.text,
    required super.onPressed,
    super.isLoading = false,
    super.isDisabled = false,
  }) : super(type: ButtonType.secondary);

  @override
  Color getBackgroundColor(ButtonState state) {
    switch (state) {
      case ButtonState.default_:
        return kButtonSecondaryDefaultBg;
      case ButtonState.hover:
        return kButtonSecondaryHoverBg;
      case ButtonState.pressed:
        return kButtonSecondaryPressedBg;
      case ButtonState.disabled:
        return kButtonSecondaryDisabledBg;
      case ButtonState.loading:
        return Colors.transparent;
    }
  }

  @override
  Color getForegroundColor(ButtonState state) {
    return state == ButtonState.disabled
        ? kButtonSecondaryDisabledText
        : kButtonSecondaryDefaultText;
  }

  @override
  double getElevation(ButtonState state) {
    return 0;
  }
}

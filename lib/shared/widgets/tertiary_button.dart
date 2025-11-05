import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/color_constants.dart';
import 'package:pokemon_app_global66/shared/widgets/base_button.dart';

class TertiaryButtonWidget extends BaseButtonWidget {
  const TertiaryButtonWidget({
    super.key,
    required super.text,
    required super.onPressed,
    super.isLoading = false,
    super.isDisabled = false,
  }) : super(type: ButtonType.tertiary);

  @override
  Color getBackgroundColor(ButtonState state) {
    return Colors.transparent;
  }

  //TODO Set colors according to design system
  @override
  Color getForegroundColor(ButtonState state) {
    switch (state) {
      case ButtonState.default_:
        return kButtonPrimaryDefaultBg;
      case ButtonState.hover:
        return kButtonPrimaryDefaultBg.withOpacity(0.8);
      case ButtonState.pressed:
        return kButtonPrimaryDefaultBg.withOpacity(0.6);
      case ButtonState.disabled:
        return Colors.grey;
      case ButtonState.loading:
        return kButtonPrimaryDefaultBg.withOpacity(0.7);
    }
  }

  @override
  double getElevation(ButtonState state) {
    return 0;
  }
}

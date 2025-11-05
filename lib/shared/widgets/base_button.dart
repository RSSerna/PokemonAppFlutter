import 'package:flutter/material.dart';

enum ButtonState { default_, hover, pressed, disabled, loading }

enum ButtonType { primary, secondary, tertiary }

abstract class BaseButtonWidget extends StatefulWidget {
  const BaseButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    required this.type,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isDisabled;
  final ButtonType type;

  // Métodos abstractos que las clases hijas deben implementar
  Color getBackgroundColor(ButtonState state);
  Color getForegroundColor(ButtonState state);
  double getElevation(ButtonState state);

  @override
  State<BaseButtonWidget> createState() => _BaseButtonWidgetState();
}

class _BaseButtonWidgetState extends State<BaseButtonWidget> {
  ButtonState _buttonState = ButtonState.default_;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: MouseRegion(
        onEnter: (_) => _updateButtonState(ButtonState.hover),
        onExit: (_) => _updateButtonState(ButtonState.default_),
        child: GestureDetector(
          onTapDown: (_) => _updateButtonState(ButtonState.pressed),
          onTapUp: (_) => _updateButtonState(ButtonState.default_),
          onTapCancel: () => _updateButtonState(ButtonState.default_),
          child: ElevatedButton(
            onPressed:
                widget.isDisabled || widget.isLoading ? null : widget.onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.getBackgroundColor(_buttonState),
              foregroundColor: widget.getForegroundColor(_buttonState),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              minimumSize: const Size(double.infinity, 58),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              elevation: widget.getElevation(_buttonState),
              shadowColor: Colors.black,
            ),
            child: _buildButtonContent(),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonContent() {
    if (widget.isLoading) {
      return const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    return Text(
      widget.text,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: widget.getForegroundColor(_buttonState),
            fontWeight: FontWeight.w600,
          ),
    );
  }

  void _updateButtonState(ButtonState state) {
    if (widget.isDisabled) {
      state = ButtonState.disabled;
    } else if (widget.isLoading) {
      state = ButtonState.loading;
    }

    setState(() {
      _buttonState = state;
    });
  }
}

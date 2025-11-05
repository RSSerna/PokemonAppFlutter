import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';

class TypeTagWidget extends StatelessWidget {
  const TypeTagWidget({
    super.key,
    required this.color,
    required this.logo,
    required this.element,
  });
  final Color color;
  final String logo, element;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      height: 26,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgPicture.asset(
                logo,
                colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
              ),
            ),
          ),
          SizedBox(width: 4),
          Text(
            element,
            style: kTagTypeNameTextStyle,
          ),
        ],
      ),
    );
  }
}

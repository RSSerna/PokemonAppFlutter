import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/core/constants/textstyles_constants.dart';
import 'package:pokemon_app_global66/core/util/extension_utils.dart';
import 'package:pokemon_app_global66/core/util/pokemon_utils.dart';
import 'package:pokemon_app_global66/features/home/presentation/widget/type_tag_widget.dart';

class TypeTagData {
  final bool isExpanded;
  final int itemsPerRow;
  final double itemWidth;

  const TypeTagData({
    this.isExpanded = false,
    this.itemsPerRow = 3,
    this.itemWidth = 90,
  });
}

class TypeTagGrid extends StatelessWidget {
  const TypeTagGrid(
      {super.key,
      required this.types,
      this.typeTagData = const TypeTagData(),
      required this.textOnError});

  final List<String> types;
  final TypeTagData typeTagData;
  final String textOnError;

  @override
  Widget build(BuildContext context) {
    if (types.isEmpty) {
      return Text(
        textOnError,
        style: kDetailsWeaknessTextStyle,
      );
    }

    return GridView.builder(
      shrinkWrap: true, // Important para ScrollView
      physics:
          const NeverScrollableScrollPhysics(), // Deshabilita el scroll del grid
      padding: EdgeInsets.zero,
      gridDelegate: typeTagData.isExpanded
          ? SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: typeTagData.itemsPerRow, // 3 items por fila
              crossAxisSpacing: 8, // Espacio horizontal entre items
              mainAxisSpacing: 8, // Espacio vertical entre filas
              childAspectRatio:
                  4, // Ajusta este valor para controlar la altura de los items
            )
          : SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: typeTagData.itemWidth, // Ancho fijo de 90px
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio:
                  2.5, // Ajusta este valor para controlar la altura
            ),
      itemCount: types.length,
      itemBuilder: (context, index) => TypeTagWidget(
        color: getTypeColor(types[index]),
        logo: getTypeLogo(types[index]),
        element: types[index].capitalize(),
      ),
    );
  }
}

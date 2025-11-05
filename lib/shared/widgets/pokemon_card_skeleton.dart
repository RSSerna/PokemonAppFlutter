import 'package:flutter/material.dart';
import 'package:pokemon_app_global66/shared/widgets/skeleton_loader.dart';

/// Widget que muestra una tarjeta de Pokémon en estado de carga (skeleton).
/// Utiliza SkeletonLoader para simular el contenido mientras se obtienen los datos reales.
class PokemonCardSkeleton extends StatelessWidget {
  const PokemonCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 102,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Columna izquierda: simula el contenido textual de la tarjeta
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Línea superior: nombre del Pokémon
                  SkeletonLoader(
                    width: 60,
                    height: 14,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  // Línea media: número o subtítulo
                  SkeletonLoader(
                    width: 120,
                    height: 20,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  // Línea inferior: tags de tipo
                  Row(
                    children: [
                      SkeletonLoader(
                        width: 60,
                        height: 20,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      const SizedBox(width: 4),
                      SkeletonLoader(
                        width: 60,
                        height: 20,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Columna derecha: imagen y posible icono de favorito
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              // Imagen circular del Pokémon
              Container(
                width: 126,
                height: 102,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: SkeletonLoader(
                    width: 94,
                    height: 94,
                    borderRadius: BorderRadius.circular(47),
                  ),
                ),
              ),
              // Icono de favorito (esquina superior derecha)
              Positioned(
                top: 8,
                right: 8,
                child: SkeletonLoader(
                  width: 32,
                  height: 32,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

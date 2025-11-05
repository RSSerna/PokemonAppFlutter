# Pokémon App Global66

Aplicación móvil desarrollada en Flutter que permite explorar y gestionar información sobre Pokémon, incluyendo detalles, habilidades, tipos y favoritos.

## Integración con IA

Este proyecto ha sido desarrollado utilizando GitHub Copilot como asistente de programación, lo que ha permitido:

### Mejoras en el Desarrollo
- **Refactorización Inteligente**: Implementación de patrones como UseCase y Either para manejo de errores
- **Documentación Automática**: Generación y mantenimiento de documentación de código
- **Optimización de Código**: Sugerencias para mejorar rendimiento y legibilidad
- **Testing**: Ayuda en la creación de casos de prueba unitarios

### Contribuciones Específicas
- Implementación de la arquitectura limpia
- Creación de helpers para el manejo de tipos de Pokémon
- Optimización de la carga de imágenes y datos
- Implementación del sistema de localización
- Desarrollo de widgets reutilizables
- Configuración de temas y estilos consistentes

### Beneficios Obtenidos
- Reducción significativa en el tiempo de desarrollo
- Mayor consistencia en el código base
- Mejor cobertura de pruebas
- Documentación más completa y mantenible
- Implementación más rápida de patrones de diseño

## Descripción del Proyecto

Esta aplicación permite a los usuarios:
- Explorar una lista completa de Pokémon
- Ver detalles específicos de cada Pokémon (tipos, habilidades, stats)
- Gestionar una lista de Pokémon favoritos
- Visualizar información detallada sobre habilidades
- Soporte para múltiples idiomas (ES/EN)

## Tecnologías Utilizadas

- **Framework**: Flutter
- **Lenguaje**: Dart
- **Gestión de Estado**: Riverpod
- **Almacenamiento Local**: Hive (para favoritos)
- **Networking**: Dio (llamadas HTTP)
- **Otros Paquetes**:
  - dartz (manejo funcional de errores)
  - freezed (generación de código)
  - flutter_localizations (internacionalización)

## Arquitectura

El proyecto sigue una arquitectura limpia (Clean Architecture) con las siguientes capas:

```
lib/
  ├── core/             # Utilidades, constantes y componentes base
  ├── features/         # Módulos de la aplicación
  │   └── home/        # Feature principal
  │       ├── data/    # Implementaciones de repositorios y modelos
  │       ├── domain/  # Casos de uso y entidades
  │       └── presentation/  # UI y providers
  ├── l10n/            # Archivos de localización
  ├── providers/       # Providers globales
  └── shared/         # Widgets compartidos
```

## Características Principales

- **Diseño Responsivo**: Adaptable a diferentes tamaños de pantalla
- **Modo Offline**: Gestión de favoritos sin conexión
- **Internacionalización**: Soporte para español e inglés
- **Gestión de Estados**: Manejo eficiente con Riverpod
- **Carga Progresiva**: Implementación de scroll infinito
- **Manejo de Errores**: Implementación de Either para control de errores

## Configuración del Proyecto

1. Asegúrate de tener Flutter instalado y configurado
2. Clona el repositorio
3. Instala las dependencias:
```bash
flutter pub get
```
4. Ejecuta la aplicación:
```bash
flutter run
```

## Pruebas

El proyecto incluye pruebas unitarias para los casos de uso y utilidades principales:

```bash
flutter test
```

## Recursos

- [Documentación de Flutter](https://docs.flutter.dev/)
- [PokéAPI](https://pokeapi.co/)

## Lecciones Aprendidas y Mejores Prácticas

### Colaboración con IA
- Revisar y validar siempre las sugerencias de Copilot
- Mantener un equilibrio entre automatización y control manual
- Usar la IA para tareas repetitivas y boilerplate
- Aprovechar la IA para explorar diferentes enfoques de solución

### Patrones Implementados con Ayuda de IA
- **Repository Pattern**: Abstracción de fuentes de datos
- **UseCase Pattern**: Separación clara de lógica de negocio
- **Provider Pattern**: Gestión eficiente de estado
- **Either Pattern**: Manejo elegante de errores
- **Builder Pattern**: Construcción flexible de widgets

### Recomendaciones para Futuros Desarrollos
- Mantener la documentación actualizada con cada cambio significativo
- Seguir las convenciones de código establecidas
- Utilizar las herramientas de IA como apoyo, no como reemplazo
- Aprovechar la generación de pruebas para mantener la calidad del código

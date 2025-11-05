/// Extensiones útiles para String e int.
extension StringExtensions on String {
  /// Primera letra en mayúscula y resto en minúscula.
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}

/// Formatea enteros con ceros a la izquierda.
extension IntExtensions on int {
  String formatNumber({int width = 3}) {
    return toString().padLeft(width, '0');
  }
}

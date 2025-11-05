import 'package:equatable/equatable.dart';

class AbilityDetailEntity extends Equatable {
  final int id;
  final String name;
  final String localizedName;

  const AbilityDetailEntity({
    required this.id,
    required this.name,
    required this.localizedName,
  });

  @override
  List<Object> get props => [id, name, localizedName];
}

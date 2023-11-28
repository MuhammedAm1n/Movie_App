import 'package:equatable/equatable.dart';

class RecommendEnt extends Equatable {
  final int id;
  final String? backDroppath;

  RecommendEnt({required this.id, this.backDroppath});

  @override
  // TODO: implement props
  List<Object?> get props => [id, backDroppath];
}

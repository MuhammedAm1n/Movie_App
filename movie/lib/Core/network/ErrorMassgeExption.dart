import 'package:equatable/equatable.dart';

class ErrorMassgeExptionModel extends Equatable {
  final int StatusCode;
  final String StatusMessaage;
  final bool success;

  const ErrorMassgeExptionModel(
      {required this.StatusCode,
      required this.StatusMessaage,
      required this.success});
  @override
  factory ErrorMassgeExptionModel.fromJson(Map<String, dynamic> json) {
    return ErrorMassgeExptionModel(
      StatusCode: json["status_code"],
      StatusMessaage: json["status_message"],
      success: json["success"],
    );
  }

  @override
  List<Object?> get props => [StatusCode, success, StatusMessaage];
}

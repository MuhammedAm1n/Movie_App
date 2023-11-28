import 'package:movie/Core/network/ErrorMassgeExption.dart';

class ExptionServer implements Exception {
  final ErrorMassgeExptionModel errorMassgeExptionModel;

  ExptionServer({required this.errorMassgeExptionModel});
}

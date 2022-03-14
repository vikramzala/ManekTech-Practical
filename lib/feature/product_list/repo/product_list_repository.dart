import 'package:manektech_practical_task/core/failure.dart';
import 'package:dartz/dartz.dart';

abstract class ProductListRepository {
  Future<Either<Failure, Failure>> gtProductList();
}

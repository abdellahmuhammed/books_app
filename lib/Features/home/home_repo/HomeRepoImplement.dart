import 'package:bookly_app/Features/home/home_repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

import '../../../Core/errors/failure.dart';
import '../home_models/BookModel.dart';

class HomeRepoImplement implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}




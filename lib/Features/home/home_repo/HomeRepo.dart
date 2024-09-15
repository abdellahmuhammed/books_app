import 'package:bookly_app/Features/home/home_models/BookModel.dart';
import 'package:dartz/dartz.dart';

import '../../../Core/errors/failure.dart';

abstract class HomeRepo{

 Future<Either<Failure, List<BookModel>>> fetchFeatureBooks();
 Future<Either<Failure, List<BookModel>>>  fetchBestSellerBooks();

}
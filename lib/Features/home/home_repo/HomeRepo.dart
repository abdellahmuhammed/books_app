import 'package:bookly_app/Features/home/home_models/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../Core/errors/failure.dart';

abstract class HomeRepo{

 Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();
 Future<Either<Failures, List<BookModel>>>  fetchNewsBooks();

}
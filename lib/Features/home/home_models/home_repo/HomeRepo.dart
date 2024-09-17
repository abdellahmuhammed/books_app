// ignore_for_file: file_names

import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failure.dart';
import '../home_data_model/book_model.dart';

abstract class HomeRepo{

 Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();
 Future<Either<Failures, List<BookModel>>>  fetchNewsBooks();

}
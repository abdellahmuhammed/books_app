import 'dart:developer';

import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:bookly_app/Features/home/home_repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';

import '../../../Core/errors/failure.dart';
import '../home_models/book_model.dart';

class HomeRepoImplement implements HomeRepo{

  final ApiServices apiServices ;
  HomeRepoImplement(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async{
  var jsonData = await apiServices.getData(endPoint: 'volumes?Filtering=free-ebooks&q=all');

  try{
    List<dynamic> listOFJsonData = jsonData['items'];
    List<BookModel> booksList = [];

    for(var item in listOFJsonData){
      booksList.add(BookModel.fromJson(item));
    }
    return right(booksList);

  }catch (error){
    return left(ServicesFailure());
  }

  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}




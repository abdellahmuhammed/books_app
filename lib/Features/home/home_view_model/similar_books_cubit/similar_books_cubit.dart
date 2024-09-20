// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:meta/meta.dart';
import '../../home_models/home_repo/HomeRepoImplement.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this._homeRepoImplement) : super(SimilarBooksInitialState());

  final HomeRepoImplement _homeRepoImplement;

  Future<void> fetchSimilarBooks({required String categories}) async {
    emit(SimilarBooksLoadingState());
    var result = await _homeRepoImplement.fetchSimilarBooks(categories: categories);
    result.fold((failure) {
      emit(SimilarBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccessState(books));
    });
  }
}

import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.homeRepoImplement) : super(NewsInitialState());
  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchNewsBooks() async {
    emit(NewsLoadingState());
    var result = await homeRepoImplement.fetchNewsBooks();
    result.fold((failure) {
      emit(NewsFailureState(failure.errorMessage));
    }, (books) {
      emit(NewsSuccessState(books));
    });
  }
}

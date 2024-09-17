import 'package:bloc/bloc.dart';
import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:meta/meta.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepoImplement) : super(FeatureBooksInitialState());

  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoadingState());
    var result = await homeRepoImplement.fetchFeatureBooks();

    result.fold((failure) {
      emit(FeatureBooksFailureState(failure.errorMessage));
    }, (books) {
      emit(FeatureBooksSuccessState(books));
    });
  }
}

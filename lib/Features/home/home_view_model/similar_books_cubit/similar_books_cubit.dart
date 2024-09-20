// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:meta/meta.dart';
import '../../home_models/home_repo/HomeRepoImplement.dart';

part 'similar_books_state.dart';

/// Cubit class to handle the state of fetching similar books.
/// It communicates with the [HomeRepoImplement] to get similar book data based on the category.
class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  /// Constructor that initializes the cubit with an initial state and repository.
  SimilarBooksCubit(this._homeRepoImplement) : super(SimilarBooksInitialState());

  /// The repository instance for accessing data.
  final HomeRepoImplement _homeRepoImplement;

  /// Method to fetch books similar to the specified category.
  /// Emits [SimilarBooksLoadingState], [SimilarBooksFailureState], or [SimilarBooksSuccessState] based on the result.
  Future<void> fetchSimilarBooks({required String categories}) async {
    emit(SimilarBooksLoadingState());

    // Fetch similar books from the repository based on the category.
    var result = await _homeRepoImplement.fetchSimilarBooks(categories: categories);

    // Handle the result of the repository call.
    result.fold(
          (failure) {
        // Emit failure state with error message.
        emit(SimilarBooksFailureState(failure.errorMessage));
      },
          (books) {
        // Emit success state with the list of similar books.
        emit(SimilarBooksSuccessState(books));
      },
    );
  }
}

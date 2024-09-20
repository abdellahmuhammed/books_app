// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

/// Cubit class to handle the state of fetching news books.
/// It communicates with the [HomeRepoImplement] to get the data.
class NewsBookCubit extends Cubit<NewsState> {
  /// Constructor that initializes the cubit with an initial state and repository.
  NewsBookCubit(this.homeRepoImplement) : super(NewsInitialState());

  /// The repository instance for accessing data.
  final HomeRepoImplement homeRepoImplement;

  /// Method to fetch the latest news books.
  /// Emits [NewsLoadingState], [NewsFailureState], or [NewsSuccessState] based on the result.
  Future<void> fetchNewsBooks() async {
    emit(NewsLoadingState());

    // Fetch the news books from the repository.
    var result = await homeRepoImplement.fetchNewsBooks();

    // Handle the result of the repository call.
    result.fold(
          (failure) {
        // Emit failure state with error message.
        emit(NewsFailureState(failure.errorMessage));
      },
          (books) {
        // Emit success state with the list of books.
        emit(NewsSuccessState(books));
      },
    );
  }
}

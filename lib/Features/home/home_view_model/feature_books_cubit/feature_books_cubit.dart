// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_models/home_repo/HomeRepoImplement.dart';
import 'package:meta/meta.dart';

part 'feature_books_state.dart';

/// [FeatureBooksCubit] manages the state for fetching featured books from the API.
class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  /// Constructor initializes the cubit with an instance of [HomeRepoImplement].
  FeatureBooksCubit(this.homeRepoImplement) : super(FeatureBooksInitialState());

  /// Instance of [HomeRepoImplement] to interact with the API and fetch data.
  final HomeRepoImplement homeRepoImplement;

  /// Fetches the list of featured books from the API.
  /// It emits [FeatureBooksLoadingState] while fetching data,
  /// then either [FeatureBooksSuccessState] with a list of books
  /// or [FeatureBooksFailureState] with an error message.
  Future<void> fetchFeatureBooks() async {
    // Emit loading state while data is being fetched.
    emit(FeatureBooksLoadingState());

    // Fetch data from repository and handle the result.
    var result = await homeRepoImplement.fetchFeatureBooks();

    // Check if result is a failure or success and emit the appropriate state.
    result.fold(
          (failure) {
        // Emit failure state with an error message.
        emit(FeatureBooksFailureState(failure.errorMessage));
      },
          (books) {
        // Emit success state with the list of books.
        emit(FeatureBooksSuccessState(books));
      },
    );
  }
}

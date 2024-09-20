part of 'feature_books_cubit.dart';

/// Base state class for [FeatureBooksCubit].
/// It is immutable to ensure state consistency and prevent unintended changes.
@immutable
sealed class FeatureBooksState {}

/// Initial state indicating that no action has been taken yet.
final class FeatureBooksInitialState extends FeatureBooksState {}

/// State indicating that the feature books are currently being loaded.
final class FeatureBooksLoadingState extends FeatureBooksState {}

/// State indicating that there was an error while fetching the feature books.
/// Contains an [errorMessage] describing the issue.
final class FeatureBooksFailureState extends FeatureBooksState {
  /// Error message describing what went wrong.
  final String errorMessage;

  /// Constructor for [FeatureBooksFailureState] which takes the error message.
  FeatureBooksFailureState(this.errorMessage);
}

/// State indicating that the feature books have been successfully fetched.
/// Contains a list of [books] which were retrieved.
final class FeatureBooksSuccessState extends FeatureBooksState {
  /// List of books that were successfully fetched.
  final List<BookModel> books;

  /// Constructor for [FeatureBooksSuccessState] which takes the list of books.
  FeatureBooksSuccessState(this.books);
}

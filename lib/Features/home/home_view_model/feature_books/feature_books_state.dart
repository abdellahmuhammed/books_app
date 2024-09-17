part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitialState extends FeatureBooksState {}

final class FeatureBooksLoadingState extends FeatureBooksState {}

final class FeatureBooksFailureState extends FeatureBooksState {
  final String errorMessage;

  FeatureBooksFailureState(this.errorMessage);
}

final class FeatureBooksSuccessState extends FeatureBooksState {
  final List<BookModel> books;

  FeatureBooksSuccessState(this.books);
}

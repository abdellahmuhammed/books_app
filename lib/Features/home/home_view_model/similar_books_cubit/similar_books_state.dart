part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {}

final class SimilarBooksInitialState extends SimilarBooksState {}
final class SimilarBooksLoadingState extends SimilarBooksState {}
final class SimilarBooksSuccessState extends SimilarBooksState {
  final List <BookModel> books;

  SimilarBooksSuccessState(this.books);
}
final class SimilarBooksFailureState extends SimilarBooksState {
  final String errorMessage
  ;

  SimilarBooksFailureState(this.errorMessage);
}

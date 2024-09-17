part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitialState extends NewsState {}

final class NewsLoadingState extends NewsState {}

final class NewsSuccessState extends NewsState {
  final List<BookModel> books;

  NewsSuccessState(this.books);
}

final class NewsFailureState extends NewsState {
  final String errorMessage;

  NewsFailureState(this.errorMessage);
}

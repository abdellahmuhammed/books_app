import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home_view_model/similar_books_cubit/similar_books_cubit.dart';
import 'home_Widgets/BookDetailsViewBody.dart';

/// Stateful widget that displays detailed information about a book
/// and fetches similar books using the [SimilarBooksCubit].
class BookDetailsView extends StatefulWidget {
  /// Constructor for the [BookDetailsView] widget.
  const BookDetailsView({super.key, required this.bookModel});

  /// The model representing the book whose details will be displayed.
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    // Fetch similar books using the first category of the book model.
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      categories: widget.bookModel.volumeInfo.categories![0],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsViewBody(bookModel: widget.bookModel),
    );
  }
}

// ignore_for_file: file_names

import 'package:bookly_app/Core/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/Core/widgets/custom_error_message.dart';
import 'package:bookly_app/Features/home/home_models/home_data_model/book_model.dart';
import 'package:bookly_app/Features/home/home_view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/utils/common_helpers.dart';
import 'SimilarBooksItem.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .16,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => SimilarBooksItem(
                imageUrl:state.books[index].volumeInfo.imageLinks?.thumbnail ?? '',
              ),
              separatorBuilder: (context, index) => myDivider(width: 16),
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CustomCircularIndicator(),
          );
        }
      },
    );
  }
}

// ignore_for_file: file_names

import 'package:bookly_app/Core/widgets/custom_circular_indicator.dart';
import 'package:bookly_app/Core/widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/utils/common_helpers.dart';
import '../../home_view_model/news_books_cubit/news_cubit.dart';
import 'BookListViewItem.dart';
// Widget for displaying the list of best-selling items

class NewsBooksListView extends StatelessWidget {
  const NewsBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBookCubit, NewsState>(
      builder: (context, state) {
       if (state is NewsSuccessState){
         return Padding(
           padding: const EdgeInsets.only(right: 30, bottom: 15, top: 0),
           child: ListView.separated(
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             // Adds a bouncy scrolling effect
             itemBuilder: (context, index) =>  BookListViewItem(bookModel:  state.books[index],),
             // Builds each best seller item
             separatorBuilder: (BuildContext context, int index) =>
                 myDivider(height: 20),
             itemCount: state.books.length, // Number of best seller items
           ),
         );
       }
       else if (state is NewsFailureState){
         return CustomErrorMessage(errorMessage: state.errorMessage);
       }
       else{
         return const CustomCircularIndicator();
       }
      },
    );
  }
}

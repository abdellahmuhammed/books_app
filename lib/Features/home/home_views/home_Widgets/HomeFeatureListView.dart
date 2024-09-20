// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/utils/custom_navigation.dart';
import '../../../../Core/utils/app_router.dart';
import '../../../../Core/utils/common_helpers.dart';
import '../../../../Core/widgets/custom_circular_indicator.dart';
import '../../../../Core/widgets/custom_error_message.dart';
import '../../home_view_model/feature_books_cubit/feature_books_cubit.dart';
import 'HomeFeatureItem.dart';

class HomeFeatureListView extends StatelessWidget {
  const HomeFeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksLoadingState) {
          return const CustomCircularIndicator();
        } else if (state is FeatureBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * .6,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => HomeFeatureBookItem(
                bookImageUrl:
                    state.books[index].volumeInfo.imageLinks!.thumbnail,
                onTap: () {
                 navigateTo(
                    context,
                    location: BookRouter.kBookDetails,
                    extra: state.books[index],
                  );
                },
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  myDivider(width: 20),
            ),
          );
        } else if (state is FeatureBooksFailureState) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomErrorMessage(errorMessage: 'Unexpected Error');
        }
      },
    );
  }
}

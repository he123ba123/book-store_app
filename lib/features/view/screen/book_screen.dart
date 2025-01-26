import 'package:bookstore_app/features/cubit/book_cubit.dart';
import 'package:bookstore_app/features/cubit/book_state.dart';
import 'package:bookstore_app/features/view/screen/splach_screen.dart';
import 'package:bookstore_app/features/view/screen/success_Screen.dart';
import 'package:bookstore_app/features/view/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookCubit>(
      create: (context) => BookCubit()..getDataCubit(),
      child: Scaffold(
        appBar: appBar(),
        body: BlocBuilder<BookCubit, BookState>(
          builder: (context, state) {
            if (state is BookSuccess) {
              return GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 24,
                childAspectRatio: 0.5,
                children: List.generate(state.bookCardModel.length, (index) {
                  return SuccessScreen(
                      bookCardModel: state.bookCardModel[index]);
                }),
              );
            } else {
              return const Center(child: SplashScreen());
            }
          },
        ),
      ),
    );
  }
}

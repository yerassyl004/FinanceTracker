import 'package:finance_app/app/di.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/categories_page/bloc/category_bloc.dart';
import 'package:finance_app/presentation/categories_page/di.dart';
import 'package:finance_app/presentation/categories_page/ui/widgets/categories_list.dart';
import 'package:finance_app/presentation/create_category/ui/page/create_category_page.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            di.getCategoryBloc()..add(CategoryEvent.loadAccounts()),
        child: CategoriesPageView());
  }
}

class CategoriesPageView extends StatelessWidget {
  const CategoriesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) => Stack(
                children: [
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        8.ph,
                        Text(
                          AppStrings.categories,
                          style: AppTextStyle.bold24(),
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                            child: state.maybeWhen(
                          loaded: (income, expense) => CategoriesList(
                              expenseCategories: expense,
                              incomeCategories: income,
                              pushEditCategory: (category) async {
                                final result = await showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        top: 16,
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          ),
                                        ),
                                        child: FractionallySizedBox(
                                          heightFactor: 0.95,
                                          child: CreateCategoryPage(
                                            args: CreateCategoryPageArguments(
                                                category),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                                if (result == true) {
                                  context
                                      .read<CategoryBloc>()
                                      .add(CategoryEvent.loadAccounts());
                                }
                              },
                              updateList: () {
                                context
                                    .read<CategoryBloc>()
                                    .add(CategoryEvent.loadAccounts());
                              }),
                          orElse: () => SizedBox(),
                        )),
                        56.ph,
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    bottom: 8,
                    height: 48,
                    child: FloatingActionButton(
                      onPressed: () async {
                        final result = await showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                ),
                                child: FractionallySizedBox(
                                  heightFactor: 0.95,
                                  child: CreateCategoryPage(),
                                ),
                              ),
                            );
                          },
                        );

                        if (context.mounted && result == true) {
                          context
                              .read<CategoryBloc>()
                              .add(CategoryEvent.loadAccounts());
                        }
                      },
                      backgroundColor: Colors.blueAccent,
                      child: Text(AppStrings.addNewCategory,
                          style: AppTextStyle.bold16()
                              .copyWith(color: ColorManager.white)),
                    ),
                  ),
                ],
              )),
    );
  }
}

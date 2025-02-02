import 'package:finance_app/app/di.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:finance_app/presentation/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/presentation/create_category/bloc/create_category_bloc.dart';
import 'package:finance_app/presentation/create_category/di.dart';
import 'package:finance_app/presentation/create_category/ui/widgets/category_type_widget.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateCategoryPageArguments {
  final Category? category;
  CreateCategoryPageArguments(this.category);
}

class CreateCategoryPage extends StatelessWidget {
  final CreateCategoryPageArguments? args;
  const CreateCategoryPage({super.key, this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => di.getCreateCategoryBloc(args?.category),
        child: CreateCategoryPageView());
  }
}

class CreateCategoryPageView extends StatelessWidget {
  const CreateCategoryPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCategoryBloc, CreateCategoryState>(
        listener: (context, state) {
          if (state is SuccessCreateCategoryState) {
            Navigator.pop(context, true);
          }
        },
        builder: (context, state) => state.maybeWhen(
              show: (data) => Scaffold(
                backgroundColor: ColorManager.white,
                body: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: SafeArea(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    AppStrings.addNewCategory,
                                    style: AppTextStyle.bold22()
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(CupertinoIcons.xmark),
                                  ),
                                ],
                              ),
                              48.ph,
                              Row(children: [
                                Text(
                                  AppStrings.type,
                                  style: AppTextStyle.body18Medium(),
                                  textAlign: TextAlign.center,
                                ),
                                28.pw,
                                SizedBox(
                                  width: 180.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CategoryTypeWidget(
                                          title: AppStrings.incomeText,
                                          isSelected: data.categoryType ==
                                              CategoryType.income,
                                          onTap: () {
                                            context
                                                .read<CreateCategoryBloc>()
                                                .add(CreateCategoryEvent.edit(
                                                    data: data.copyWith(
                                                        categoryType:
                                                            CategoryType.income)));
                                          }),
                                      CategoryTypeWidget(
                                          title: AppStrings.expenseText,
                                          isSelected: data.categoryType ==
                                              CategoryType.expense,
                                          onTap: () {
                                            context
                                                .read<CreateCategoryBloc>()
                                                .add(CreateCategoryEvent.edit(
                                                    data: data.copyWith(
                                                        categoryType:
                                                            CategoryType
                                                                .expense)));
                                          })
                                    ],
                                  ),
                                ),
                              ]),
                              26.ph,
                              Row(
                                children: [
                                  Text(
                                    AppStrings.name,
                                    style: AppTextStyle.body18Medium(),
                                    textAlign: TextAlign.center,
                                  ),
                                  12.pw,
                                  Expanded(
                                    child: NameFieldWidget(
                                      onChanged: (text) {
                                        context.read<CreateCategoryBloc>().add(
                                            CreateCategoryEvent.edit(
                                                data: data.copyWith(
                                                    category: data.category
                                                        ?.copyWith(
                                                            title: text))));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              26.ph,
                              Text(
                                AppStrings.selectIcon,
                                style: AppTextStyle.body18Medium()
                              ),
                              16.ph,
                              SizedBox(
                                height: 140.h,
                                width: double.infinity,
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: data.imageAssets.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5,
                                    crossAxisSpacing: 8,
                                    mainAxisSpacing: 8,
                                    childAspectRatio: 1,
                                  ),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.read<CreateCategoryBloc>().add(
                                            CreateCategoryEvent.edit(
                                                data: data.copyWith(
                                                    selectedImageIndex:
                                                        index)));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color:
                                                data.selectedImageIndex == index
                                                    ? Colors.blueAccent
                                                    : Colors.transparent,
                                            width: 2,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Image.asset(
                                            'assets/images/${data.imageAssets[index]}.png',
                                            width: 30.w,
                                            height: 30.h,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              26.ph,
                              SizedBox(
                                width: double.infinity,
                                height: 48.h,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    context.read<CreateCategoryBloc>().add(
                                        CreateCategoryEvent.create(data: data));
                                  },
                                  backgroundColor: Colors.blueAccent,
                                  child: Text(
                                    data.isUpdate ? AppStrings.save : AppStrings.add,
                                    style: AppTextStyle.bold16().copyWith(color: ColorManager.white)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              orElse: () => SizedBox(),
            ));
  }
}

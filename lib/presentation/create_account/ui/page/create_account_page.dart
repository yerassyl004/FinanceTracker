import 'package:finance_app/app/di.dart';
import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/presentation/create_account/bloc/create_account_bloc.dart';
import 'package:finance_app/presentation/create_account/di.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/create_account/ui/widget/balance_field_widget.dart';
import 'package:finance_app/presentation/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/presentation/resourses/color_manager.dart';
import 'package:finance_app/presentation/resourses/strings_manager.dart';
import 'package:finance_app/presentation/resourses/styles_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountPageArguments {
  final Account? account;
  CreateAccountPageArguments({this.account});
}

class CreateAccountPage extends StatelessWidget {
  final CreateAccountPageArguments? args;
  const CreateAccountPage({super.key, this.args});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.getCreateAccountBloc(args?.account)
        ..add(CreateAccountEvent.init()),
      child: CreateAccountPageView(),
    );
  }
}

class CreateAccountPageView extends StatelessWidget {
  const CreateAccountPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocConsumer<CreateAccountBloc, CreateAccountState>(
        listener: (context, state) {
          if (state is SuccessCreateAccountState) {
            Navigator.pop(context, true);
          }
        },
        builder: (context, state) => state.maybeWhen(
          orElse: () => SizedBox(),
          show: (data) => Padding(
            padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    bottom: false,
                    child: Row(
                      children: [
                        Text(
                          AppStrings.addNewAccount,
                          style: AppTextStyle.bold22(),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(CupertinoIcons.xmark),
                        ),
                      ],
                    ),
                  ),
                  48.ph,
                  Row(
                    children: [
                      Text(
                        AppStrings.initialAmount,
                        style: AppTextStyle.body18Medium(),
                      ),
                      12.pw,
                      Expanded(
                        child: BalanceFieldWidget(
                          initialValue: data.account?.cash.toString(),
                          onChanged: (text) {
                            context.read<CreateAccountBloc>().add(
                              CreateAccountEvent.edit(
                                data: data.copyWith(
                                  account: data.account?.copyWith(
                                    cash: double.tryParse(text) ?? 0,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  26.ph,
                  Row(
                    children: [
                      Text(
                        AppStrings.name,
                        style: AppTextStyle.body18Medium(),
                      ),
                      12.pw,
                      Expanded(
                        child: NameFieldWidget(
                          initialValue: data.account?.title,
                          onChanged: (text) {
                            context.read<CreateAccountBloc>().add(
                              CreateAccountEvent.edit(
                                data: data.copyWith(
                                  account: data.account?.copyWith(title: text),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  26.ph,
                  Text(
                    AppStrings.selectIcon,
                    style: AppTextStyle.body18Medium(),
                  ),
                  16.ph,
                  SizedBox(
                    height: 80.h,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.imageAssets.length,
                      itemBuilder: (context, index) {
                        final isSelected = data.selectedImageIndex == index;
                        return GestureDetector(
                          onTap: () {
                            context.read<CreateAccountBloc>().add(
                              CreateAccountEvent.edit(
                                data: data.copyWith(
                                  account: data.account?.copyWith(
                                    icon: data.imageAssets[index],
                                  ),
                                  selectedImageIndex: index,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: isSelected
                                    ? Colors.blueAccent
                                    : Colors.transparent,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.grey.shade100,
                              ),
                              child: Image.asset(
                                'assets/images/${data.imageAssets[index]}.png',
                                width: 50,
                                height: 50,
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
                        context.read<CreateAccountBloc>().add(
                          CreateAccountEvent.create(data: data),
                        );
                      },
                      backgroundColor: Colors.blueAccent,
                      child: Text(
                        data.account == null
                            ? AppStrings.add
                            : AppStrings.save,
                        style: AppTextStyle.bold16()
                            .copyWith(color: ColorManager.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

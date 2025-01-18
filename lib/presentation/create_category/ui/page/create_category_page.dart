import 'package:finance_app/presentation/create_account/ui/widget/name_field_widget.dart';
import 'package:finance_app/presentation/create_category/service/create_category_service.dart';
import 'package:finance_app/presentation/create_category/ui/widgets/category_type_widget.dart';
import 'package:finance_app/domain/models/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateCategoryPage extends StatefulWidget {
  final Category? category;
  CreateCategoryPage({super.key, this.category});

  @override
  State<CreateCategoryPage> createState() => _CreateCategoryPageState();
}

class _CreateCategoryPageState extends State<CreateCategoryPage> {
  final TextEditingController _balanceController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final CreateCategoryService service = CreateCategoryService();
  int _selectedImageIndex = 0;
  late CategoryType selectedType;
  

  late List<String> _imageAssets;

  @override
  void initState() {
    super.initState();
    _balanceController.addListener(_addCurrencySymbol);
    _nameController.text = widget.category?.title ?? 'Untitled';
    if (widget.category != null) {
      selectedType = widget.category!.type;
      _imageAssets = service.getCategoryImages(selectedType);
      _selectedImageIndex = _imageAssets.indexOf(widget.category!.icon);
    } else {
      selectedType = CategoryType.expense;
      _imageAssets = service.getCategoryImages(selectedType);
    }
    
    debugPrint(selectedType.name);
  }

  void _addCurrencySymbol() {
    if (!_balanceController.text.startsWith('₸')) {
      _balanceController.value = _balanceController.value.copyWith(
        text: '₸${_balanceController.text.replaceAll('₸', '')}',
        selection:
            TextSelection.collapsed(offset: _balanceController.text.length + 1),
      );
    }
  }

  @override
  void dispose() {
    _balanceController.removeListener(_addCurrencySymbol);
    _balanceController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onImageTap(int index) {
    setState(() {
      _selectedImageIndex = index;
    });
  }

  void _addAccount() {
    try {
      if (_nameController.text.trim().isEmpty) {
        _nameController.text = 'Untitled';
      }

      final category = Category(
        icon: _imageAssets[_selectedImageIndex],
        title: _nameController.text.trim(),
        type: selectedType
      );

      if (widget.category == null) {
        _createAccount(category);
      } else {
        _updateAccount(category);
      }
    } catch (e) {
      debugPrint('Error creating account: ${e.toString()}');
      Navigator.pop(context, false);
    }
  }

  void _createAccount(Category category) {
    CreateCategoryService service = CreateCategoryService();
    if (selectedType == CategoryType.expense) {
      service.createExpenseCategory(category);
    } else {
      service.createIncomeCategory(category);
    }
    Navigator.pop(context, true);
  }

  void _updateAccount(Category category) {
    widget.category?.icon = category.icon;
    widget.category?.title = category.title;

    CreateCategoryService service = CreateCategoryService();
    if (selectedType == CategoryType.expense) {
      service.updatedCategory(widget.category!);
    } else {
      service.updatedIncomeCategory(widget.category!);
    }
    Navigator.pop(context, true);
  }

  void _categorySelected(CategoryType type) {
      setState(() {
        selectedType = type;
      });
      _imageAssets = service.getCategoryImages(selectedType);
      debugPrint(selectedType.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            // color: Colors.white,
            child: SafeArea(
              child: SingleChildScrollView(
                controller: _scrollController,
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Add new category',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(CupertinoIcons.xmark),
                        ),
                      ],
                    ),
                    const SizedBox(height: 48),
                    Row(
                      children: [
                      const Text(
                        'Type',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 28),
                      SizedBox(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CategoryTypeWidget(
                                title: "Income",
                                isSelected: selectedType == CategoryType.income,
                                onTap: () {
                                  _categorySelected(CategoryType.income);
                                }),
                            CategoryTypeWidget(
                                title: "Expense",
                                isSelected: selectedType == CategoryType.expense,
                                onTap: () {
                                  _categorySelected(CategoryType.expense);
                                })
                          ],
                        ),
                      ),
                    ]),
                    const SizedBox(height: 26),
                    Row(
                      children: [
                        const Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: NameFieldWidget(controller: _nameController),
                        ),
                      ],
                    ),
                    const SizedBox(height: 26),
                    const Text(
                      'Select an icon',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 140,
                      width: double.infinity,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _imageAssets.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 1,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () => _onImageTap(index),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: _selectedImageIndex == index
                                      ? Colors.blueAccent
                                      : Colors.transparent,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey.shade100,
                                ),
                                child: Image.asset(
                                  'assets/images/${_imageAssets[index]}.png',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 26),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: FloatingActionButton(
                        onPressed: _addAccount,
                        backgroundColor: Colors.blueAccent,
                        child: Text(
                          widget.category == null ? 'Add' : 'Save',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}

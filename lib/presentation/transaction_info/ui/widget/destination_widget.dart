import 'package:finance_app/app/extensions.dart';
import 'package:finance_app/domain/models/account.dart';
import 'package:finance_app/presentation/transaction_info/ui/widget/account_info_widget.dart';
import 'package:flutter/cupertino.dart';

class DestinationWidget extends StatelessWidget {
  final Account? destination;
  const DestinationWidget({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.ph,
        Icon(CupertinoIcons.down_arrow),
        8.ph,
        AccountInfoWidget(account: destination!)
      ],
    );
  }
}
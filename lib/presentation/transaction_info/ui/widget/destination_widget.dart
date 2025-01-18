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
        const SizedBox(height: 8),
        const Icon(CupertinoIcons.down_arrow),
        const SizedBox(height: 8),
        AccountInfoWidget(account: destination!)
      ],
    );
  }
}
import 'package:finance_app/domain/models/transaction.dart';
import 'package:intl/intl.dart';

String getDate(List<Transaction> transactions) {
  if (transactions.isEmpty) return '';

  DateTime dateTime = transactions.first.date;
  DateFormat formatter = DateFormat('MMMM yyyy');
  return formatter.format(dateTime);
}

import 'package:finance_app/presentation/analysis/service/analys_service.dart';
import 'package:finance_app/presentation/analysis/ui/analysis_list/bloc/income_analysis_event.dart';
import 'package:finance_app/presentation/analysis/ui/analysis_list/bloc/income_analysis_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncomeAnalysisBloc extends Bloc<IncomeAnalysisEvent, IncomeAnalysisState> {
  final AnalysService analysService;

  IncomeAnalysisBloc({required this.analysService}) : super(IncomeAnalysisInitial()) {
    on<LoadIncomeTransactions>(_onLoadIncomeTransactions);
  }

  Future<void> _onLoadIncomeTransactions(
    LoadIncomeTransactions event,
    Emitter<IncomeAnalysisState> emit,
  ) async {
    emit(IncomeAnalysisLoading());
    try {
      final transactions = await analysService.loadTransactions(event.date, event.typeSpending);
      final analysisList = await analysService.getIncomePercentItem(Future.value(transactions));
      emit(IncomeAnalysisLoaded(analysisList: analysisList));
    } catch (e) {
      emit(IncomeAnalysisError(message: e.toString()));
    }
  }
}

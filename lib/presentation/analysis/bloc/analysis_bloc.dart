// analysis_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:finance_app/presentation/analysis/service/analys_service.dart';
import 'analysis_event.dart';
import 'analysis_state.dart';

class AnalysisBloc extends Bloc<AnalysisEvent, AnalysisState> {
  final AnalysService analysService;

  AnalysisBloc({required this.analysService}) : super(AnalysisInitial()) {
    on<LoadTransactions>(_onLoadTransactions);
    on<UpdateSegments>(_onUpdateSegments);
  }

  Future<void> _onLoadTransactions(
      LoadTransactions event, Emitter<AnalysisState> emit) async {
    emit(AnalysisLoading());
    try {
      final transactions = await analysService.loadTransactions(
          event.month, event.typeSpending);
      final segments = await analysService.getSegmentPercentage(Future.value(transactions));
      emit(AnalysisLoaded(transactions: transactions, segments: segments));
    } catch (e) {
      emit(AnalysisError(e.toString()));
    }
  }

  Future<void> _onUpdateSegments(
      UpdateSegments event, Emitter<AnalysisState> emit) async {
    if (state is AnalysisLoaded) {
      final currentState = state as AnalysisLoaded;
      final segments = await analysService.getSegmentPercentage(
          Future.value(currentState.transactions));
      emit(AnalysisLoaded(
          transactions: currentState.transactions, segments: segments));
    }
  }
}

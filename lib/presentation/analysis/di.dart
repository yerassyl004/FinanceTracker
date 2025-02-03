import 'package:finance_app/app/di.dart';
import 'package:finance_app/presentation/analysis/bloc/analysis_bloc.dart';

extension AnalysisDI on DI {
  AnalysisBloc getAnalysisBloc() {
    return AnalysisBloc(getIt(), getIt(), getIt(), getIt(), getIt());
  }
}
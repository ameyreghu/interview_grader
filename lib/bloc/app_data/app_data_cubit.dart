import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:interview_grader/models/assessment.dart';

part 'app_data_state.dart';

class AppDataCubit extends HydratedCubit<AppDataState> {
  AppDataCubit() : super(AppDataState.initial());

  add(Assessment assementReport) {
    emit(state.copyWith(
        assementReports: state.assementReports..add(assementReport)));
  }

  @override
  AppDataState? fromJson(Map<String, dynamic> json) {
    return AppDataState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(AppDataState state) {
    return state.toMap();
  }
}

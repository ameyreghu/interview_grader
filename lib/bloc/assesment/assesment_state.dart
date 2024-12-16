// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'assesment_cubit.dart';

class AssesmentState {
  final Assessment assessmentReport;
  AssesmentState({
    required this.assessmentReport,
  });


  

  AssesmentState copyWith({
    Assessment? assessmentReport,
  }) {
    return AssesmentState(
      assessmentReport: assessmentReport ?? this.assessmentReport,
    );
  }
}

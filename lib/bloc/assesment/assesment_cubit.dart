import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:interview_grader/mock/data_source.dart';
import 'package:interview_grader/models/assessment.dart';

part 'assesment_state.dart';

class AssesmentCubit extends Cubit<AssesmentState> {
  Assessment assessmentreport;
  AssesmentCubit(this.assessmentreport)
      : super(AssesmentState(
            assessmentReport:assessmentreport));

  setAsseseName(String name) {
    emit(state.copyWith(
        assessmentReport: state.assessmentReport.copyWith(asseseeName: name)));
  }

  setAsseseYoe(num yoe) {
    emit(state.copyWith(
        assessmentReport: state.assessmentReport.copyWith(yoe: yoe)));
  }

  updateGrade(int sectionIndex, int questionIndex, int grade) {
    var ar = state.assessmentReport;
    var sections = ar.sections;

    var section = sections[sectionIndex];
    var ai = section.assesmentItems[questionIndex];
    ai = ai.copyWith(grade: grade);

    ar.sections[sectionIndex].assesmentItems[questionIndex] = ai;
    emit(state.copyWith(assessmentReport: ar));
  }

  clear() {
    emit(AssesmentState(
        assessmentReport: Assessment.fromJson(assessmentData.toJson())));
    print(state);
  }
}

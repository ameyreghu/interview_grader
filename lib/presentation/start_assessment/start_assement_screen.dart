import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_grader/bloc/app_data/app_data_cubit.dart';
import 'package:interview_grader/bloc/assesment/assesment_cubit.dart';
import 'package:interview_grader/main.dart';
import 'package:interview_grader/mock/data_source.dart';
import 'package:interview_grader/presentation/start_assessment/widgets/item_view.dart';
import 'package:interview_grader/presentation/start_assessment/widgets/start_view.dart';

class StartAssementScreen extends StatelessWidget {
  const StartAssementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<AssesmentCubit>().state;
    var vm = context.read<AssesmentCubit>();
    var appCubit = context.read<AppDataCubit>();

    var controller = PageController();
    void navigateToNext() {
      controller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }

    start(String name, num yoe) {
      print(name);
      print(yoe);
      vm.setAsseseName(name);
      vm.setAsseseYoe(yoe);
      navigateToNext();
    }

    List<Widget> _generatePages() {
      List<Widget> pages = [];
      for (int i = 0; i < state.assessmentReport.sections.length; i++) {
        var section = state.assessmentReport.sections[i];
        for (int j = 0; j < section.assesmentItems.length; j++) {
          var item = section.assesmentItems[j];
          pages.add(ItemView(
              sectionName: section.label,
              assesmentItem: item,
              index: i + j + 1,
              totalNumber: state.assessmentReport.getTotalNoOfQuestions(),
              updateGrade: (grade) {
                vm.updateGrade(i, j, grade);
              },
              onNext: () {
                if (i == state.assessmentReport.sections.length - 1) {
                  if (j == section.assesmentItems.length - 1) {
                    appCubit.add(state.assessmentReport);
                    Navigator.of(context).pop();
                    vm.clear();
                  }
                }
                navigateToNext();
              }));
        }
      }

      return pages;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment'),
      ),
      body: PageView(
        controller: controller,
        children: [StartView(start), ..._generatePages()],
      ),
    );
  }
}

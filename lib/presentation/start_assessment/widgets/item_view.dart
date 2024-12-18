import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_grader/main.dart';
import 'package:interview_grader/models/assessment_item.dart';
import 'package:interview_grader/presentation/widgets/centered_text.dart';
import 'package:syntax_highlight/syntax_highlight.dart';

class ItemView extends StatelessWidget {
  final String sectionName;
  final AssesmentItem assesmentItem;
  final int index;
  final int totalNumber;
  final Function(int grade) updateGrade;
  final VoidCallback onNext;
  const ItemView(
      {required this.sectionName,
      required this.assesmentItem,
      required this.index,
      required this.totalNumber,
      required this.updateGrade,
      required this.onNext,
      super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16..h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: sectionName,
                    style: textTheme.displaySmall,
                    children: [
                      TextSpan(
                          text: '   $index/$totalNumber',
                          style: textTheme.titleLarge),
                    ]),
              ),
              space(),
              LinearProgressIndicator(
                value: index / totalNumber,
              ),
              space(val: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question',
                    style: textTheme.titleLarge,
                  ),
                  TextButton(
                      onPressed: () async {
                        await Clipboard.setData(
                            ClipboardData(text: assesmentItem.question));
                      },
                      child: const Text("Copy Question"))
                ],
              ),
              space(),
              Text(
                assesmentItem.question,
                style: textTheme.bodyLarge,
              ),
              space(),
              Text(
                'Weight',
                style: textTheme.titleLarge,
              ),
              space(),
              Text(
                assesmentItem.weight.toString(),
                style: textTheme.bodyLarge,
              ),
              space(),
              Text(
                'Answer',
                style: textTheme.titleLarge,
              ),
              space(),
              if (!assesmentItem.answer.contains('// Refer to the code below'))
                Text(
                  assesmentItem.answer,
                  style: textTheme.bodyLarge,
                ),
              if (assesmentItem.answer.contains('// Refer to the code below'))
                Text.rich(dartLightHighlighter.highlight(assesmentItem.answer)),
              space(),
              Text(
                'Please Grade to continue',
                style: textTheme.titleMedium,
              ),
              space(),
              Text(
                '0 is considered as not answerd',
                style: textTheme.labelSmall?.copyWith(color: Colors.orange),
              ),
              space(),
              Wrap(
                children: [
                  ...List.generate(
                    11,
                    (index) => index,
                  ).map((e) => TextButton(
                      onPressed: () {
                        updateGrade(e);
                      },
                      child: Text(
                        e.toString(),
                        style: TextStyle(
                            color: assesmentItem.grade == e
                                ? Colors.deepPurple
                                : Colors.black),
                      ))),
                ],
              ),
              space(),
              ElevatedButton(
                  onPressed: () {
                    print(assesmentItem.grade);
                    onNext();
                  },
                  child: Text(index == totalNumber ? 'Submit' : 'Next')),
              space(val: 50.h)
            ],
          ),
        ),
      ),
    );
  }
}

Widget space({double? val}) => Gap(val ?? 20.h);

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_grader/main.dart';

class StartView extends StatefulWidget {
  final Function(String name, num yoe) onNext;
  const StartView(this.onNext, {super.key});

  @override
  State<StartView> createState() => _StartViewState();
}

class _StartViewState extends State<StartView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController yoeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Text(
            'Please Fill in the Candidate Details',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Gap(40.h),
          TextFormField(
            controller: nameController,
            decoration: fieldDecoration.copyWith(labelText: 'Name'),
          ),
          Gap(20.h),
          TextFormField(
            controller: yoeController,
            inputFormatters: [
              LengthLimitingTextInputFormatter(3),
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration:
                fieldDecoration.copyWith(labelText: 'Year of Experience'),
          ),
          Gap(20.h),
          ElevatedButton(
              onPressed: () {
                if (nameController.text.isEmpty || yoeController.text.isEmpty) {
                  return;
                }
                if (num.tryParse(yoeController.text) == null) return;

                widget.onNext(
                    nameController.text, num.parse(yoeController.text));
              },
              child: const Text("NEXT")),
          const Spacer(),
          Text(
            'Click Next to start the assesment, the questions are weighted, grade a question asper the response of the candidate',
            style: Theme.of(context).textTheme.labelSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

const fieldDecoration = InputDecoration(border: OutlineInputBorder());

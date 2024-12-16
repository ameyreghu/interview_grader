import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:interview_grader/bloc/app_data/app_data_cubit.dart';
import 'package:interview_grader/bloc/assesment/assesment_cubit.dart';
import 'package:interview_grader/mock/data_source.dart';
import 'package:interview_grader/models/assessment.dart';
import 'package:interview_grader/presentation/start_assessment/start_assement_screen.dart';
import 'package:interview_grader/presentation/widgets/centered_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          TextButton(
              onPressed: () {
                debugPrint(assessmentData.toJson());
              },
              child: Text('Export'))
        ],
      ),
      body: BlocBuilder<AppDataCubit, AppDataState>(
        builder: (context, state) {
          if (state.assementReports.isEmpty) {
            return const CenteredText('No Data');
          }
          return ListView.builder(
            itemCount: state.assementReports.length,
            itemBuilder: (context, index) {
              var result = state.assementReports[index].getResult();
              return Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Container(
                  padding: EdgeInsets.all(16.0.h),
                  margin: EdgeInsets.symmetric(
                      vertical: 8.0.h), // Add margin for spacing between cards
                  decoration: BoxDecoration(
                    color: result.$4
                        ? Colors.green.withOpacity(0.1)
                        : Colors.red.withOpacity(
                            0.1), // Light background based on the result
                    borderRadius: BorderRadius.circular(
                        12.r), // Rounded corners for a softer look
                    border: Border.all(
                      color: result.$4
                          ? Colors.green
                          : Colors.red, // Border color based on the result
                      width: 2, // Border width
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Candidate Name: ${state.assementReports[index].asseseeName}",
                        style: TextStyle(
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Gap(8.h),
                      Text(
                        "YOE: ${state.assementReports[index].yoe.toString()} years",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      Gap(8.h),
                      Text(
                        "Score: ${result.$1}/ ${result.$2}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      Gap(8.h),
                      Text(
                        "Result: ${result.$4 ? "PASS" : "FAIL"}",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.bold,
                          color: result.$4
                              ? Colors.green
                              : Colors.red, // Color based on result
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return BlocProvider(
                create: (context) => AssesmentCubit(Assessment.fromJson(jsonEncode(json))),
                child: const StartAssementScreen(),
              );
            },
          ));
        },
        child:
            const Tooltip(message: 'Start Assesment', child: Icon(Icons.start)),
      ),
    );
  }
}

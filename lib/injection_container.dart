import 'package:get_it/get_it.dart';
import 'package:interview_grader/bloc/app_data/app_data_cubit.dart';
import 'package:interview_grader/bloc/assesment/assesment_cubit.dart';

final sl = GetIt.instance;

initializeDependencies() {
  //Cubits
  sl.registerFactory(
    () => AppDataCubit(),
  );
}

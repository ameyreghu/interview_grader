// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'app_data_cubit.dart';

class AppDataState {
  final List<Assessment> assementReports;
  AppDataState({
    required this.assementReports,
  });

  factory AppDataState.initial() => AppDataState(assementReports: []);

  AppDataState copyWith({
    List<Assessment>? assementReports,
  }) {
    return AppDataState(
      assementReports: assementReports ?? this.assementReports,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assementReports': assementReports.map((x) => x.toMap()).toList(),
    };
  }

  factory AppDataState.fromMap(Map<String, dynamic> map) {
    return AppDataState(
      assementReports: (map['assementReports'] as List<dynamic>? ?? [])
          .map<Assessment>((x) => Assessment.fromMap(x as Map<String, dynamic>))
          .toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory AppDataState.fromJson(String source) =>
      AppDataState.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AppDataState(assementReports: $assementReports)';

  @override
  bool operator ==(covariant AppDataState other) {
    if (identical(this, other)) return true;

    return listEquals(other.assementReports, assementReports);
  }

  @override
  int get hashCode => assementReports.hashCode;
}

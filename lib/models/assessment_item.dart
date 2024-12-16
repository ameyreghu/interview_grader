import 'dart:convert';

class AssesmentItem {
  final String question;
  final String answer;
  int grade;
  final int weight;  //can be from 1 to 5
  AssesmentItem({
    required this.question,
    required this.answer,
    this.grade = 0,
    this.weight = 1,
  });

  AssesmentItem copyWith({
    String? question,
    String? answer,
    int? grade,
    int? weight,
  }) {
    return AssesmentItem(
      question: question ?? this.question,
      answer: answer ?? this.answer,
      grade: grade ?? this.grade,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'answer': answer,
      'grade': grade,
      'weight': weight,
    };
  }

  factory AssesmentItem.fromMap(Map<String, dynamic> map) {
    // Use null-aware operators and provide defaults where necessary
    return AssesmentItem(
      question:
          map['question'] as String? ?? '', // Default to empty string if null
      answer: map['answer'] as String? ?? '', // Default to empty string if null
      grade: (map['grade'] as int?) ?? 0, // Default to 0 if null
      weight: (map['weight'] as int?) ?? 1, // Default to 1 if null
    );
  }

  String toJson() => json.encode(toMap());

  factory AssesmentItem.fromJson(String source) =>
      AssesmentItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AssesmentItem(question: $question, answer: $answer, grade: $grade, weight: $weight)';
  }

  @override
  bool operator ==(covariant AssesmentItem other) {
    if (identical(this, other)) return true;

    return other.question == question &&
        other.answer == answer &&
        other.grade == grade &&
        other.weight == weight;
  }

  @override
  int get hashCode {
    return question.hashCode ^
        answer.hashCode ^
        grade.hashCode ^
        weight.hashCode;
  }
}

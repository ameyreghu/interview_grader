// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:interview_grader/models/assessment_item.dart';

class Section {
  final String label;
  List<AssesmentItem> assesmentItems;
  Section({
    required this.label,
    required this.assesmentItems,
  });

  Section copyWith({
    String? label,
    List<AssesmentItem>? assesmentItems,
  }) {
    return Section(
      label: label ?? this.label,
      assesmentItems: assesmentItems ?? this.assesmentItems,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'assesmentItems': assesmentItems.map((x) => x.toMap()).toList(),
    };
  }

factory Section.fromMap(Map<String, dynamic> map) {
  // Use null-aware operators and provide defaults where necessary
  return Section(
    label: map['label'] as String? ?? '', // Default to empty string if null
    assesmentItems: (map['assesmentItems'] as List<dynamic>? ?? [])
        .map<AssesmentItem>((x) => AssesmentItem.fromMap(x as Map<String, dynamic>))
        .toList(),
  );
}


  String toJson() => json.encode(toMap());

  factory Section.fromJson(String source) =>
      Section.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Section(label: $label, assesmentItems: $assesmentItems)';

  @override
  bool operator ==(covariant Section other) {
    if (identical(this, other)) return true;

    return other.label == label &&
        listEquals(other.assesmentItems, assesmentItems);
  }

  @override
  int get hashCode => label.hashCode ^ assesmentItems.hashCode;
}

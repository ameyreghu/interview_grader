// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:interview_grader/models/section.dart';

class Assessment {
  final String asseseeName;
  final num yoe;
  List<Section> sections;
  Assessment({
    this.asseseeName = '',
    this.yoe = 0,
    required this.sections,
  });

  Assessment copyWith({
    String? asseseeName,
    num? yoe,
    List<Section>? sections,
  }) {
    return Assessment(
      asseseeName: asseseeName ?? this.asseseeName,
      yoe: yoe ?? this.yoe,
      sections: sections ?? this.sections,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asseseeName': asseseeName,
      'yoe': yoe,
      'sections': sections.map((x) => x.toMap()).toList(),
    };
  }

  factory Assessment.fromMap(Map<String, dynamic> map) {
    return Assessment(
      asseseeName: map['asseseeName'] as String? ??
          '', // Default to empty string if null
      yoe: map['yoe'] as num? ?? 0, // Default to 0 if null
      sections: (map['sections'] as List<dynamic>? ?? [])
          .map<Section>((x) => Section.fromMap(x as Map<String, dynamic>))
          .toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Assessment.fromJson(String source) =>
      Assessment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Assessment(asseseeName: $asseseeName, yoe: $yoe, sections: $sections)';

  @override
  bool operator ==(covariant Assessment other) {
    if (identical(this, other)) return true;

    return other.asseseeName == asseseeName &&
        other.yoe == yoe &&
        listEquals(other.sections, sections);
  }

  @override
  int get hashCode => asseseeName.hashCode ^ yoe.hashCode ^ sections.hashCode;

  int getTotalNoOfQuestions() {
    int len = 0;

    sections.map((e) {
      len += e.assesmentItems.length;
    }).toList();

    return len;
  }

  (int score, int total, num percent, bool result) getResult() {
    int toatlScore = 0;
    int totalPotentialScore = 0;

    sections.map((e) {
      e.assesmentItems.map((e) {
        toatlScore += (e.grade * e.weight);
        totalPotentialScore += (10 * e.weight);
      }).toList();
    }).toList();

    var precent = toatlScore / totalPotentialScore;
    return (toatlScore, totalPotentialScore, precent, precent > 0.75);
  }
}

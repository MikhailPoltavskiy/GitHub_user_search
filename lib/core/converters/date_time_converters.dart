import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? value) => value != null ? DateTime.parse(value).toLocal() : null;

  @override
  String? toJson(DateTime? value) => value?.toUtc().toIso8601String();
}

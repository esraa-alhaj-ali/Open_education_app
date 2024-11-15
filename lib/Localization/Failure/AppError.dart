// ignore_for_file: non_constant_identifier_names, file_names

class AppError {
  int? number;
  String? content;
  String? content_en;
  AppError(
      {required this.number, required this.content, required this.content_en});

  factory AppError.fromJson(Map<String, dynamic> json) {
    AppError appError = AppError(
        number: json["number"],
        content: json["Content"],
        content_en: json['Content_en']);
    return appError;
  }
}

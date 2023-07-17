class AccountModel {
  int status;
  String message;
  String? code;

  AccountModel({
    required this.status,
    required this.message,
    this.code,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      status: json["status"],
      message: json["message"],
      code: json["code"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "status": status,
      "message": message,
      "code": code,
    };
  }
}

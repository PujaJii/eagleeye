// To parse this JSON data, do
//
//     final logInModel = logInModelFromJson(jsonString);

import 'dart:convert';

LogInModel logInModelFromJson(String str) => LogInModel.fromJson(json.decode(str));

String logInModelToJson(LogInModel data) => json.encode(data.toJson());

class LogInModel {
  String? status;
  String? message;
  List<Datum>? data;

  LogInModel({
    this.status,
    this.message,
    this.data,
  });

  factory LogInModel.fromJson(Map<String, dynamic> json) => LogInModel(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  int? id;
  String? name;
  String? username;
  String? email;
  dynamic emailVerifiedAt;
  String? image;
  String? role;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? mobileNumber;
  DateTime? birthDate;
  String? maritualStatus;
  String? currentAddress;
  String? permanentAddress;
  String? degreeName;
  String? percentage;
  String? yearOfPassing;
  String? university;
  String? addhharNumber;
  String? panNumber;
  String? lastCompanyName;
  String? previousSalary;
  String? totalWorkTime;
  String? indestryType;
  String? imageUrl;

  Datum({
    this.id,
    this.name,
    this.username,
    this.email,
    this.emailVerifiedAt,
    this.image,
    this.role,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.mobileNumber,
    this.birthDate,
    this.maritualStatus,
    this.currentAddress,
    this.permanentAddress,
    this.degreeName,
    this.percentage,
    this.yearOfPassing,
    this.university,
    this.addhharNumber,
    this.panNumber,
    this.lastCompanyName,
    this.previousSalary,
    this.totalWorkTime,
    this.indestryType,
    this.imageUrl,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    image: json["image"],
    role: json["role"],
    status: json["status"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    mobileNumber: json["mobile_number"],
    birthDate: json["birth_date"] == null ? null : DateTime.parse(json["birth_date"]),
    maritualStatus: json["maritual_status"],
    currentAddress: json["current_address"],
    permanentAddress: json["permanent_address"],
    degreeName: json["degree_name"],
    percentage: json["percentage"],
    yearOfPassing: json["year_of_passing"],
    university: json["university"],
    addhharNumber: json["addhhar_number"],
    panNumber: json["pan_number"],
    lastCompanyName: json["last_company_name"],
    previousSalary: json["previous_salary"],
    totalWorkTime: json["total_work_time"],
    indestryType: json["indestry_type"],
    imageUrl: json["image_url"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "image": image,
    "role": role,
    "status": status,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "mobile_number": mobileNumber,
    "birth_date": "${birthDate!.year.toString().padLeft(4, '0')}-${birthDate!.month.toString().padLeft(2, '0')}-${birthDate!.day.toString().padLeft(2, '0')}",
    "maritual_status": maritualStatus,
    "current_address": currentAddress,
    "permanent_address": permanentAddress,
    "degree_name": degreeName,
    "percentage": percentage,
    "year_of_passing": yearOfPassing,
    "university": university,
    "addhhar_number": addhharNumber,
    "pan_number": panNumber,
    "last_company_name": lastCompanyName,
    "previous_salary": previousSalary,
    "total_work_time": totalWorkTime,
    "indestry_type": indestryType,
    "image_url": imageUrl,
  };
}

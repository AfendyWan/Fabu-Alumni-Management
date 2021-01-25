import 'package:flutter/foundation.dart';

class Alumni{

  String name;
  String alumniId;
  String password;
  String phoneNum;
  String email;

  String alumniProfStatus;
  int alumniProfStatusYearGained;

  String alumniAddress1;
  String alumniAddress2;
  String alumniAddressCity;
  String alumniAddressPostCode;
  String alumniAddressState;
  String alumniAddressCountry;

  String alumniFieldOfSpecializationDiploma;
  int alumniBatchDiploma;
  int alumniStartStudyYearDiploma;
  int alumniGraduateYearDiploma;

  String alumniFieldOfSpecializationBachelor;
  int alumniBatchBachelor;
  int alumniStartStudyYearBachelor;
  int alumniGraduateYearBachelor;


  String alumniFieldOfSpecializationMaster;
  int alumniBatchMaster;
  int alumniStartStudyYearMaster;
  int alumniGraduateYearMaster;

  String alumniCurEmployer;
  String alumniCurJob;
  int alumniCurSalary;

  String alumniPrevEmployer;
  String alumniPrevJob;
  int alumniPrevSalary;


  String employerAddress1;
  String employerAddress2;
  String employerAddressCity;
  String employerAddressPostCode;
  String employerAddressState;
  String employerAddressCountry;

  String role;
  String userId;
  String alumniProfilePicture;


  Alumni({
    @required this.alumniId,
    @required this.name,
    @required this.email,
    @required this.alumniCurJob,
    @required this.alumniAddress1,
    @required this.alumniAddress2,
    @required this.phoneNum,

    @required this.alumniFieldOfSpecializationDiploma,
    @required this.alumniBatchDiploma,
    @required this.alumniGraduateYearDiploma,

    @required this.alumniFieldOfSpecializationBachelor,
    @required this.alumniBatchBachelor,
    @required this.alumniGraduateYearBachelor,

    @required this.alumniFieldOfSpecializationMaster,
    @required this.alumniBatchMaster,
    @required this.alumniGraduateYearMaster,
    @required this.alumniProfStatus,

  });

  factory Alumni.fromJson(Map<String, dynamic> json){
    return Alumni(
      alumniId: json['alumniId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      alumniCurJob: json['alumniCurJob'] as String,
      alumniProfStatus: json['alumniProfStatus'] as String,
      alumniAddress1: json['alumniAddress1'] as String,
      alumniAddress2: json['alumniAddress2'] as String,
      phoneNum: json["phoneNum"],

      alumniFieldOfSpecializationDiploma: json['alumniFieldOfSpecializationDiploma'] as String,
      alumniBatchDiploma: json['alumniBatchDiploma'] as int,
      alumniGraduateYearDiploma: json['alumniGraduateYearDiploma'] as int,

      alumniFieldOfSpecializationBachelor: json['alumniFieldOfSpecializationBachelor'] as String,
      alumniBatchBachelor: json['alumniBatchBachelor'] as int,
      alumniGraduateYearBachelor: json['alumniGraduateYearBachelor'] as int,

      alumniFieldOfSpecializationMaster: json['alumniFieldOfSpecializationMaster'] as String,
      alumniBatchMaster: json['alumniBatchMaster'] as int,
      alumniGraduateYearMaster: json['alumniGraduateYearMaster'] as int,



    );
  }
}
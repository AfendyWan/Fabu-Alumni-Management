import 'package:flutter/foundation.dart';

class Alumni{

  final int id;
  final String name;
  final String email;
  final String alumniDegree;
  final int alumniBatch;
  final int alumniGraduateYear;
  final String alumniCurJob;
  final String alumniAddress1;
  final String alumniAddress2;
  final String phone;


  Alumni({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.alumniDegree,
    @required this.alumniBatch,
    @required this.alumniGraduateYear,
    @required this.alumniCurJob,
    @required this.alumniAddress1,
    @required this.alumniAddress2,
    @required this.phone,



  });

  factory Alumni.fromJson(Map<String, dynamic> json){
    return Alumni(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      alumniDegree: json['alumniDegree'] as String,
      alumniBatch: json['alumniBatch'] as int,
      alumniGraduateYear: json['alumniGraduateYear'] as int,
      alumniCurJob: json['alumniCurJob'] as String,
      alumniAddress1: json['alumniAddress1'] as String,
      alumniAddress2: json['alumniAddress2'] as String,
      phone: json['phone'] as String,
    );
  }
}
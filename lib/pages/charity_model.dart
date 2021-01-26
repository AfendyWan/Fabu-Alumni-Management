import 'package:flutter/foundation.dart';

class Charity {
  final String charityDateline;
  final String charityDescription;
  final double charityGatheredAmt;
  final int charityID;
  final String charityImage;
  final double charityTargetAmt;
  final String charityTitle;

  Charity(
      {@required this.charityDateline,
        @required this.charityDescription,
        @required this.charityGatheredAmt,
        @required this.charityID,
        @required this.charityImage,
        @required this.charityTargetAmt,
        @required this.charityTitle});

  factory Charity.fromJson(Map<String, dynamic> json) {
    return Charity(
        charityDateline: json['charityDateline'] as String,
        charityDescription: json['charityDescription'] as String,
        charityGatheredAmt: json['charityGatheredAmt'] as double,
        charityID: json['charityID'] as int,
        charityImage: json['charityImage'] as String,
        charityTargetAmt: json['charityTargetAmt'] as double,
        charityTitle: json['charityTitle'] as String);
  }
}

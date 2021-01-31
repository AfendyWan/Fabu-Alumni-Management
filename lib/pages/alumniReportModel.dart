class AlumniData {
  AlumniData(this.alumniGraduateYearBachelor, this.totalAlumniGraduateYearBachelor, 
  this.alumniGraduateYearMaster, this.totalAlumniGraduateYearMaster,
  this.alumniGraduateYearDiploma, this.totalAlumniGraduateYearDiploma);

 final String alumniGraduateYearBachelor;
 final int totalAlumniGraduateYearBachelor;
 final String alumniGraduateYearMaster; 
 final int totalAlumniGraduateYearMaster;
 final String alumniGraduateYearDiploma; 
 final int totalAlumniGraduateYearDiploma;

 factory AlumniData.fromJson(Map<String, dynamic> json){
    return AlumniData(
     json['alumniGraduateYearBachelor'] as String,
     json['totalAlumniGraduateYearBachelor'] as int,
     json['alumniGraduateYearMaster'] as String,
     json['totalAlumniGraduateYearMaster'] as int,
     json['alumniGraduateYearDiploma'] as String,
     json['totalAlumniGraduateYearDiploma'] as int,
      
    );
  }
}

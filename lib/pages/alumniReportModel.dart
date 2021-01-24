class AlumniData {
  AlumniData(this.alumniGraduateYear, this.countYear);

 final String alumniGraduateYear;
 final int countYear; 

 factory AlumniData.fromJson(Map<String, dynamic> json){
    return AlumniData(
     json['alumniGraduateYear'] as String,
     json['countYear'] as int,
      
    );
  }
}

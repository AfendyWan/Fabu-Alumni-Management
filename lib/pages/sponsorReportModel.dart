class SponsorData {
  SponsorData(this.eventSponsorYear, this.totalSponsorAmountPerYear);

 final String eventSponsorYear;
 final double totalSponsorAmountPerYear; 

 factory SponsorData.fromJson(Map<String, dynamic> json){
    return SponsorData(
     json['eventSponsorYear'] as String,
     json['totalSponsorAmountPerYear'] as double,
      
    );
  }
}

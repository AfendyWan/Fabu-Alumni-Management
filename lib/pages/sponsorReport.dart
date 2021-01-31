import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobilesda3/pages/reportMainPage.dart';
import 'package:mobilesda3/pages/sponsorReportModel.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



class SponsorReport extends StatefulWidget  {
 SponsorReport({Key key}) : super(key: key);
  @override
  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends State<SponsorReport> {
  List<SponsorData> chartData = [];
  Future<String> _loadSponsorDataAsset() async {
  return await rootBundle.loadString('assets/file.json');
}
 

@override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        iconTheme: IconThemeData(
        color: Colors.white, 
  ),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: () { Navigator.pop(
    context,
    MaterialPageRoute(builder: (context) => ReportMainPage()),
  ); },),
      
        title: Text('Event Sponsor Report',style: TextStyle(
              color: Colors.white
      )),
      centerTitle: true,
      backgroundColor: Colors.grey[900],
      ),
        body: 
        Column(children: [
          //Initialize the chart widget
        Container(
        height: 580,
        child: SfCartesianChart(
        title: ChartTitle( text: "Sponsor amount per year"),
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: "Event Year")
            ),
            primaryYAxis: NumericAxis(title: AxisTitle(text: "Sponsor Amount")),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<SponsorData, String>>[
              ColumnSeries<SponsorData, String>(
                  name: "Amount (RM)",
                  dataSource: chartData, // Deserialized Json data list.
                  xValueMapper: (SponsorData report, _) => report.eventSponsorYear,
                  yValueMapper: (SponsorData report, _) => report.totalSponsorAmountPerYear,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]
            )),
        ]));
  }
  Future loadSponsorData() async {
  String jsonString = await _loadSponsorDataAsset(); // Deserialization  step 1
  final jsonResponse = json.decode(jsonString); // Deserialization  step 2
  setState(() {
    for(Map i in jsonResponse) {
      chartData.add(SponsorData.fromJson(i)); // Deserialization step 3
    }
  });
}
@override
void initState() {
  super.initState();
  loadSponsorData();
} 

}


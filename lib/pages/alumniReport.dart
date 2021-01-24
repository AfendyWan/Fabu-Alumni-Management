import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobilesda3/pages/reportMainPage.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'alumniReportModel.dart';


class ReportPage extends StatefulWidget  {
  ReportPage({Key key}) : super(key: key);
  @override
  ReportPageState createState() => ReportPageState();
}

class ReportPageState extends State<ReportPage> {
  List<AlumniData> chartData = [];
  Future<String> _loadAlumniDataAsset() async {
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
      
        title: Text('Alumni Batch Report',style: TextStyle(
              color: Colors.white
      )),
      centerTitle: true,
      backgroundColor: Colors.grey[900],
      ),
        body: 
        Column(children: [
          //Initialize the chart widget
        Container(
        height: 550,
        child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: "Batch Year")
            ),
            primaryYAxis: NumericAxis(title: AxisTitle(text: "Number of Alumni")),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<AlumniData, String>>[
              LineSeries<AlumniData, String>(
                  name: "Alumni",
                  dataSource: chartData, // Deserialized Json data list.
                  xValueMapper: (AlumniData report, _) => report.alumniGraduateYear,
                  yValueMapper: (AlumniData report, _) => report.countYear,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]
            )),
        ]));
  }
  Future loadAlumniData() async {
  String jsonString = await _loadAlumniDataAsset(); // Deserialization  step 1
  final jsonResponse = json.decode(jsonString); // Deserialization  step 2
  setState(() {
    for(Map i in jsonResponse) {
      chartData.add(AlumniData.fromJson(i)); // Deserialization step 3
    }
  });
}
@override
void initState() {
  super.initState();
  loadAlumniData();
} 

}


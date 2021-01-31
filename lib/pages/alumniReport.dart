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
  return await rootBundle.loadString('assets/alumniFile.json');
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
        height: 200,
        child: SfCartesianChart(
            palette: <Color>[
                            Colors.green,
                        ],
            title: ChartTitle( text: "Number of alumni graduated with Masters"),
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: "Batch Year")
            ),
            primaryYAxis: NumericAxis(title: AxisTitle(text: "Number of Alumni")),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<AlumniData, String>>[
              ColumnSeries<AlumniData, String>(
                  name: "Alumni",
                  dataSource: chartData, // Deserialized Json data list.
                  xValueMapper: (AlumniData report, _) => report.alumniGraduateYearMaster,
                  yValueMapper: (AlumniData report, _) => report.totalAlumniGraduateYearMaster,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]
            )),

            Container(
        height: 200,
        child: SfCartesianChart(
            palette: <Color>[
                            Colors.orange,
                        ],
            title: ChartTitle( text: "Number of alumni graduated with Bachelors"),
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: "Batch Year")
            ),
            primaryYAxis: NumericAxis(title: AxisTitle(text: "Number of Alumni")),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<AlumniData, String>>[
              ColumnSeries<AlumniData, String>(
                  name: "Alumni",
                  dataSource: chartData, // Deserialized Json data list.
                  xValueMapper: (AlumniData report, _) => report.alumniGraduateYearDiploma,
                  yValueMapper: (AlumniData report, _) => report.totalAlumniGraduateYearDiploma,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]
            )),

            Container(
        height: 200,
        child: SfCartesianChart(
            palette: <Color>[
                            Colors.teal,
                        ],
            title: ChartTitle( text: "Number of alumni graduated with Diploma"),
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: "Batch Year")
            ),
            primaryYAxis: NumericAxis(title: AxisTitle(text: "Number of Alumni")),
            legend: Legend(isVisible: true),
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<AlumniData, String>>[
              ColumnSeries<AlumniData, String>(
                  name: "Alumni",
                  dataSource: chartData, // Deserialized Json data list.
                  xValueMapper: (AlumniData report, _) => report.alumniGraduateYearBachelor,
                  yValueMapper: (AlumniData report, _) => report.totalAlumniGraduateYearBachelor,
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


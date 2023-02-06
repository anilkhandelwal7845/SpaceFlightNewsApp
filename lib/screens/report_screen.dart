import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:spaceflight_app/Models/ReportsModel.dart';
import 'package:spaceflight_app/api/api.dart';


class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  var reports = List<ReportsModel>.empty();

  _getReports() {
    API.getReports().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        reports = list.map((model) => ReportsModel.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getReports();
  }

  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: reports.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    reports[index].title.toString(),
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    height: 225,
                    width: 480,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        reports[index].imageUrl.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ReadMoreText(
                    trimCollapsedText: "Read more..",
                    trimExpandedText: "Show less..",
                    trimMode: TrimMode.Line,
                    trimLines: 3,
                    reports[index].summary.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: .2,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          }),
    );
  }
}

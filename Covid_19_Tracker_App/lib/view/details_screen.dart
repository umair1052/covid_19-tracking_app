import 'package:covid_19_tracker_app/view/world_states.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases, totalDeaths,totalRecovered,active,critical,todayRecovered,test;
   DetailsScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.totalRecovered,
    required this.test,
});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true ,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.067),
              child: Card(
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*.06,),
                    ResuableRow(title: 'Cases', value: widget.totalCases.toString()),
                    ResuableRow(title: 'Recoverd', value: widget.totalRecovered.toString()),
                    ResuableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                    ResuableRow(title: 'Critical', value: widget.critical.toString()),
                    ResuableRow(title: 'Today Recoverd', value: widget.totalRecovered.toString()),
                  ],
                ),
              ),),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:doctorapp_json/presentation/widget/DoctorCard.dart';
import 'package:doctorapp_json/presentation/widget/doctor.dart';
import 'package:flutter/material.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  List<Doctor> doctors = [];

  @override
  void initState() {
    super.initState();
    _loadDoctorData();
  }

  Future<void> _loadDoctorData() async {
    final response = await DefaultAssetBundle.of(context)
        .loadString('assets/json/doctors.json');
    final jsonData = jsonDecode(response);
    setState(() {
      doctors = jsonData.map<Doctor>((json) => Doctor.fromJson(json)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      childAspectRatio: 400 / 100, 
     ),
     itemCount: doctors.length,
     itemBuilder: (context, index) {
     final doctor = doctors[index];
     return SizedBox(
      height: 200, 
      width:  300,
      child: DoctorCard(doctor: doctor),
    );
   },
  ),

    );
  }
}

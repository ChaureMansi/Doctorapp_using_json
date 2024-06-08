import 'package:flutter/material.dart';

class AppointmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: List.generate(
                                8, // Number of rows
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 45,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: index % 3 == 0
                                                ? Colors.red
                                                : index % 3 == 1
                                                    ? Colors.green
                                                    : Colors.blue, // Different clock color based on index
                                            borderRadius: BorderRadius.circular(6),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.watch_later_rounded,
                                              color: Colors.white,
                                              
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 35),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            color: Color.fromARGB(255, 160, 205, 242),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '${(index + 8) % 12}:00 ${index < 4 ? "AM" : "PM"}', // Different times based on index
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black, // Changed color
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 35),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: index % 3 == 0
                                                    ? Colors.red
                                                    : index % 3 == 1
                                                        ? Colors.green
                                                        : Colors.blue, // Border color matches clock container color
                                                width: 2,
                                              ),
                                              borderRadius: BorderRadius.circular(6),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Patient Name', // Different patient names based on index
                                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(width: 150),
                                                  Text(
                                                    'x years', // Different ages based on index
                                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
    );
  }
}

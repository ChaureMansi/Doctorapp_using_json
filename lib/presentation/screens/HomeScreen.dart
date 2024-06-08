import 'package:doctorapp_json/pallete.dart';
import 'package:doctorapp_json/presentation/screens/DoctorList.dart';
import 'package:doctorapp_json/presentation/screens/DoctorScreen.dart';
import 'package:doctorapp_json/presentation/screens/LoginScreen.dart';
import 'package:doctorapp_json/presentation/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    color: Colors.white,
      child: Row(
        
        children: [
        Expanded(
             flex: 1,
             child: Center(
             child: Container(
             decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/doctor.png"),
                fit: BoxFit.cover,
              ),
             ),
             ),
            ),
           ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), 
                bottomLeft: Radius.circular(20),
               ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  const Text(
                    "SAPDOCS",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 55,
                      color: Pallete.main,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 130),
                  const Text(
                    "Login to your sapdos account \n or create one now.",textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,color: Pallete.main,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    child: const Text('LOGIN', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white,
                 ),),
                 style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                   fixedSize: const Size(300, 40),
                  backgroundColor: Pallete.main,
                      
                 ),
                ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                    },
                    child: const Text('SIGN IN', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Pallete.main,
                 ),),
                 style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                   fixedSize: const Size(300, 40),
                  backgroundColor: Colors.white,
                      
                 ),
                ),
                  const SizedBox(height: 80),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DoctorScreen()));
                    },
                    child: const Text(
                      'Proceed as a Doctor',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Pallete.main,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ],
          ),
    );
        
  }
}
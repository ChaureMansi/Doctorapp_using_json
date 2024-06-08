import 'package:doctorapp_json/presentation/screens/DoctorList.dart';
import 'package:flutter/material.dart';
import 'package:doctorapp_json/presentation/screens/DoctorScreen.dart';
import 'package:doctorapp_json/presentation/screens/RegisterScreen.dart';
import 'package:doctorapp_json/presentation/widget/AppointmentList.dart';
import 'package:doctorapp_json/pallete.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "SAPDOCS",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 55,
                          color: Pallete.main,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 90),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Pallete.main,
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Enter existing account\'s details',
                        style: TextStyle(
                          color: Pallete.lighttext,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Pallete.main),
                            ),
                            prefixIcon: Icon(Icons.email, color: Pallete.main),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Pallete.main),
                            ),
                            prefixIcon: Icon(Icons.lock, color: Pallete.main),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe = value ?? false;
                                    });
                                  },
                                ),
                                Text(
                                  'Remember Me',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Pallete.main,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                // Add action for "Forgot Password" here
                              },
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Pallete.main,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Pallete.main,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 45),
                      SizedBox(
                        width: 350,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Validation passed, proceed with login
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DoctorList()),
                              );
                            }
                          },
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            fixedSize: const Size(300, 40),
                            backgroundColor: Pallete.main,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      SizedBox(
                        width: 350,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Not on Sapdos?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Pallete.main,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                                );
                              },
                              child: Text(
                                'Sign-up',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Pallete.main,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Pallete.main,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:chatopia/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:chatopia/animation/fade_animation.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool passwordVisible = false;
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/background.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                          1,
                          Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png')))),
                        )),
                    Positioned(
                        left: 180,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                          1.3,
                          Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png')))),
                        )),
                    Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                          1.5,
                          Container(
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png')))),
                        )),
                    Positioned(
                      child: Container(
                          margin: const EdgeInsets.only(top: 60),
                          child: const FadeAnimation(
                            1.6,
                            Center(
                              child: Text(
                                "Chatopia",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(children: [
                    FadeAnimation(
                        1.8,
                        SizedBox(
                          height: 320,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 120, horizontal: 40),
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(255, 224, 178, 0.2),
                                    Color.fromRGBO(165, 214, 167, 0.2),
                                    Color.fromRGBO(255, 205, 210, 0.4)
                                  ]),
                                  borderRadius: BorderRadius.circular(60),
                                  border: Border.all(color: Colors.black)),
                              child: const Text(
                                "Start Exploring",
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 45,
                    ),
                    FadeAnimation(
                        2,
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, MyRoutes.signupPage);
                          },
                          child: Container(
                            height: 55,
                            width: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6)
                                ])),
                            child: const Center(
                              child: Text("Get Started",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.loginPage);
                      },
                      child: const FadeAnimation(
                          1.5,
                          Text("Already have an account?",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black))),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}

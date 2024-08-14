import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/route_manager.dart';
import 'package:krassword/screens/home_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/background_image.gif"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(const HomeScreen());
              },
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 255, 30),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Start",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Gap(20),
            GestureDetector(
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 255, 30),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Sozlamar",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

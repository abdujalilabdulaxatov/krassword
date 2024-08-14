import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:krassword/controller/krassword_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final KrasswordController krasswordController =
      Get.put(KrasswordController());
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("asset/images/background_image.gif"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenW * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 255, 89),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Obx(
                      () => Text(
                        "${krasswordController.stars}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    )),
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationZ(screenW * 0.10423),
                    child: Container(
                        width: screenW * 0.15,
                        height: screenW * 0.15,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber, width: 2)),
                        child: Transform(
                          transform: Matrix4.rotationZ(screenW * 0.1003),
                          alignment: Alignment.center,
                          child: Center(
                              child: Obx(
                            () => Text(
                              "${krasswordController.level}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                          )),
                        )),
                  ),
                  Container(
                    width: screenW * 0.3,
                    height: 40,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 255, 89),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Obx(
                      () => Text(
                        "${krasswordController.diamond}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    )),
                  ),
                ],
              ),
              const Gap(30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.volunteer_activism_outlined),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30,
                    child: Icon(Icons.diamond),
                  ),
                ],
              ),
              Gap(screenH * 0.2),
              Container(
                width: screenW * 0.7,
                height: screenH * 0.2,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 196, 196, 196),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.blue, width: 4)),
                child: Center(
                  child: Obx(() => Text(
                        "${krasswordController.lst[krasswordController.levelUp]["question"]}",
                        style: const TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                ),
              ),
              Gap(screenH * 0.04),
              Obx(() {
                return SizedBox(
                  width: screenW * 0.9,
                  height: screenH * 0.05,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: krasswordController
                          .lst[krasswordController.levelUp]["answer"].length,
                      itemBuilder: (ctx, index) {
                        return Container(
                          width: 50,
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.blue, width: 3)),
                        );
                      }),
                );
              }),
              Gap(screenH * 0.04),
              Obx(() {
                return Wrap(
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    for (int i = 0;
                        i <
                            ((14 -
                                    krasswordController
                                        .lst[krasswordController.levelUp]
                                            ["answer"]
                                        .length)) +
                                krasswordController
                                    .lst[krasswordController.levelUp]["answer"]
                                    .length;
                        i++)
                      GestureDetector(
                        child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.blue,
                            child: Center(
                                child: Obx(
                              () => Text(
                                "${krasswordController.lst[krasswordController.levelUp]["answer"].length > i ? krasswordController.lst[krasswordController.levelUp]["sort"][i] : krasswordController.alphabit[i]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ))),
                      ),
                  ],
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:yellowsquash/widgets/apptheme.dart';
import 'package:yellowsquash/widgets/common_text_field.dart';

class WorkShopsScreen extends StatefulWidget {
  const WorkShopsScreen({super.key});

  @override
  State<WorkShopsScreen> createState() => _WorkShopsScreenState();
}

class _WorkShopsScreenState extends State<WorkShopsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Workshops',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(Icons.menu),
          elevation: 5,
          backgroundColor: Colors.white,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: RegisterTextFieldWidget(
              hint: 'Search Here',
              prefix: const Icon(Icons.search),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.filter_list_rounded,
                  color: AppTheme.greenColor,
                ),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(children: [
              SizedBox(
                height: 30,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 100,
                        height: 60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 5, right: 5),
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(7),
                                            border: Border.all(color: AppTheme.greenColor)),
                                        child: Center(child: Text('scrollable')))),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ]),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: Colors.white),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(
                            0.2,
                            0.2,
                          ),
                          blurRadius: 1,
                        ),
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      // Left Column with Image and Icons
                      Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
                              child: Image.asset(
                                'assets/images/doctor.png',
                                height: 100,
                                width: 100,
                              )),
                          const SizedBox(height: 10),
                        ],
                      ),
                      const SizedBox(width: 10),
                      // Right Column with Details
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ADHD | Austhama | Mental Health',
                              style: TextStyle(fontSize: 10, color: AppTheme.greenColor),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Functional medician Approach For Development Disorder',
                              style: TextStyle(fontSize: 12, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dr. Aswini Gard',
                              style: TextStyle(fontSize: 10, color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Functional Madetician Expert, MBBS',
                              style: TextStyle(fontSize: 10, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: AppTheme.greenColor,
                                  size: 12,
                                ),
                                Flexible(
                                  child: Text(
                                    'Feb,28,2024 | 07:30 PM - 09:30 PM (IST)',
                                    style: TextStyle(fontSize: 8, color: AppTheme.greenColor),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                );
              })
        ])));
  }
}

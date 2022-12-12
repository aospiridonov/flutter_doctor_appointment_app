import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointment_app/constants/colors.dart';
import 'package:flutter_doctor_appointment_app/widgets/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final categoriesNames = const <String>[
    'Dental',
    'Heart',
    'Eye',
    'Brain',
    'Ear',
  ];

  final categoriesIcons = const <Icon>[
    Icon(MdiIcons.toothOutline, color: pColor, size: 30),
    Icon(MdiIcons.heartPlus, color: pColor, size: 30),
    Icon(MdiIcons.eye, color: pColor, size: 30),
    Icon(MdiIcons.brain, color: pColor, size: 30),
    Icon(MdiIcons.earHearing, color: pColor, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffd9e4EE),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    pColor.withOpacity(0.8),
                    pColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage('assets/images/doctor3.jpg'),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: wColor,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Hi, patient',
                          style: TextStyle(
                            color: wColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Your Health is Our\nFirst Priority",
                          style: TextStyle(
                            color: wColor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: wColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: bsColor,
                                blurRadius: 6,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search here ...',
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: categoriesIcons.length,
                      itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xfff2f8ff),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: bsColor,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(child: categoriesIcons[index]),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            categoriesNames[index],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Recommended Doctors',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const DoctorsSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

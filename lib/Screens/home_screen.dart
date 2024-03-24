import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: size.height / 3.4,
                decoration: const BoxDecoration(
                    color: Color(0xFF0F4C75),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Hi admin",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        Icon(
                          Icons.logout,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "GRAPES IDMR",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        height: 55,
                        width: size.width / 1.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Search Employees",
                              style: TextStyle(
                                color: Color(0xFF0F4C75),
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Color(0xFF0F4C75),
                              size: 22,
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer()
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buttonItem(
                        title: "Total Active Employees",
                        subtitle: "100",
                        size: size),
                    const Spacer(),
                    buttonItem(
                        title: "Current Attendance",
                        subtitle: "98",
                        size: size),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buttonItem(
                        title: "Current Leave", subtitle: "2", size: size),
                    const Spacer(),
                    buttonItem(
                        title: "Leave Request", subtitle: "2", size: size),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    buttonItem(title: "Transfer IN", subtitle: "5", size: size),
                    const Spacer(),
                    buttonItem(
                        title: "Transfer OUT", subtitle: "5", size: size),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttonItem(
    {required String title,
    required String subtitle,
    var onTap,
    required Size size}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(255, 175, 208, 236),width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 20,
            spreadRadius: -2,
          ),
        ],
      ),
      height: 130,
      width: size.width / 2.4,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Inter',
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Inter',
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    ),
  );
}

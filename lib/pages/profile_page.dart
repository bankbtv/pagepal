import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(105),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
            title: const Text(
              "Profile",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: _profileCon());
  }

  Widget _profileCon() => Container(
        height: 120,
        color: const Color.fromRGBO(217, 217, 217, 1),
        child: Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Badge(
                      backgroundColor: Colors.green,
                      offset: const Offset(0, 60),
                      label: const Text(
                        "+",
                        style: TextStyle(fontSize: 12),
                      ),
                      child: Container(
                        width: 85,
                        height: 85,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                        child: const Icon(
                          Icons.person,
                          size: 55,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ຊື່ຜູ້ໃຊ້",
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text("Test kup",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Row(children: [
                          Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: Colors.yellow),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "500",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 20),
                            textAlign: TextAlign.start,
                          ),
                        ]),
                        const Row(
                          children: [
                            Text(
                              "ຊື້",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "ຟີ",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              "0",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12, right: 33),
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        child: TextButton(
                            onPressed: () => {},
                            child: const Text(
                              "ຕື່ມ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      ),
                    )
                  ],
                )
              ],
            )),
      );
}

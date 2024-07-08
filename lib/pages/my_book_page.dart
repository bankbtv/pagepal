import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pagepal_app/pages/test_page.dart';

class MyBookPage extends StatefulWidget {
  const MyBookPage({super.key});

  @override
  State<MyBookPage> createState() => _MyBookPageState();
}

class _MyBookPageState extends State<MyBookPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(105),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
            title: const Text(
              "My books",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.search,
                  size: 35,
                ),
              )
            ],
            bottom: const TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 4,
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(text: 'ຫນັງສືຂອງຂ້ອຍ'),
                Tab(text: 'ກຳລັງຕິດຕາມ'),
                Tab(text: 'ຫນັງສືທີ່ຢ່າກໄດ້'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [_mineBook(), _folowing(), const TestPage()],
        ),
      ),
    );
  }

  Widget _mineBook() => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("ຫນັງສືທັງຫມົດ ",
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                Text("(ຫົວ)")
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_conBook("20"), _conBook("25"), _conBook("10")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_conBook("30"), _conBook("16"), _conBook("19")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_conBook("22"), _conBook("27"), _conBook("8")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_conBook("18"), _conBook("34"), _conBook("75")],
            )
          ]),
        ),
      );

  Widget _folowing() => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              SizedBox(
                width: 20,
                child: TextButton(
                    onPressed: () => {},
                    child: const Text(
                      "A-Z",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')),
                  const Text(
                    "Takehiko Inoue",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.note))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')),
                  const Text(
                    "Takehiko Inoue",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.note))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')),
                  const Text(
                    "Takehiko Inoue",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.note))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')),
                  const Text(
                    "Takehiko Inoue",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.note))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg')),
                  const Text(
                    "Takehiko Inoue",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.note))
                ],
              ),
            ],
          ),
        ),
      );

  Widget _conBook(String persen) => SizedBox(
        width: 120,
        height: 190,
        child: Column(
          children: [
            Image.network(
                height: 160,
                fit: BoxFit.cover,
                'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg'),
            SizedBox(
              height: 30,
              width: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "$persen%",
                    style: const TextStyle(fontSize: 15, color: Colors.orange),
                  ),
                  TextButton(
                      onPressed: () => {},
                      child: const Text(
                        "***",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ))
                ],
              ),
            )
          ],
        ),
      );
}

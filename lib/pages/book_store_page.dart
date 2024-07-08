import 'package:flutter/material.dart';

class BookStorePage extends StatefulWidget {
  const BookStorePage({super.key});

  @override
  State<BookStorePage> createState() => _BookStorePageState();
}

class _BookStorePageState extends State<BookStorePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(105),
          child: AppBar(
            backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
            title: const Text(
              "Bookstore",
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
                Tab(text: 'ທັງຫມົດ'),
                Tab(text: 'ນິຍາຍ'),
                Tab(text: 'ກາຕູນ'),
                Tab(text: 'ທົ່ວໄປ'),
                Tab(text: 'ການຮຽນ'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _allBooks(),
            _allBooks(),
            _allBooks(),
            _allBooks(),
            _allBooks(),
          ],
        ),
      ),
    );
  }

  Widget _allBooks() => Scaffold(
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_container(), _container(), _container()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_container(), _container(), _container()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_container(), _container(), _container()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_container(), _container(), _container()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_container(), _container(), _container()],
          ),
        ]),
      );

  Widget _container() => Container(
        width: 130,
        height: 260,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromRGBO(217, 217, 217, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                    height: 160,
                    fit: BoxFit.cover,
                    'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg'),
                const SizedBox(
                  width: 110,
                  height: 43,
                  child: Text(
                    "Header",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "H.P. lovecraft",
                  style: TextStyle(fontSize: 11),
                ),
                Row(children: [
                  const SizedBox(
                    width: 65,
                    child: Row(children: [
                      Icon(size: 11, Icons.star, color: Colors.blue),
                      Icon(size: 11, Icons.star, color: Colors.blue),
                      Icon(size: 11, Icons.star, color: Colors.blue),
                      Icon(size: 11, Icons.star, color: Colors.blue),
                      Icon(size: 11, Icons.star),
                    ]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    width: 45,
                    height: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Row(children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.yellow),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const SizedBox(
                          width: 21,
                          height: 19,
                          child: Text(
                            "500",
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 11),
                            textAlign: TextAlign.start,
                          ),
                        )
                      ]),
                    ),
                  )
                ])
              ]),
        ),
      );
}

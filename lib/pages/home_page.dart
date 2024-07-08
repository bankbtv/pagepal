import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(105),
        child: AppBar(
            backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
            title: const Text(
              "HOME",
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
            ]),
      ),
      body: ListView(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _heigtSell(),
              _heigtSell(),
            ],
          ),
        ),
        _newBook(),
        _newBook()
      ]),
    );
  }

  Widget _heigtSell() => Container(
        width: 335,
        height: 235,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromRGBO(217, 217, 217, 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 150,
                  height: 30,
                  child: Text(
                    "ຫນັງສືຂາຍດີ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 140,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 95,
                          height: 135,
                          child: Image.network(
                              fit: BoxFit.cover,
                              'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg'),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        SizedBox(
                          width: 95,
                          height: 135,
                          child: Image.network(
                              fit: BoxFit.cover,
                              'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg'),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        SizedBox(
                          width: 95,
                          height: 135,
                          child: Image.network(
                              fit: BoxFit.cover,
                              'https://t4.ftcdn.net/jpg/00/97/58/97/360_F_97589769_t45CqXyzjz0KXwoBZT9PRaWGHRk5hQqQ.jpg'),
                        ),
                      ]),
                )
              ]),
        ),
      );

  Widget _newBook() => SizedBox(
        height: 320,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 60,
            width: 400,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    " ຫນັງສືໃຫມ່",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () => {},
                      child: const Text(
                        "ເບິ່ງທັງຫມົດ",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      )),
                ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _container(),
                _container(),
                _container(),
                _container(),
                _container(),
              ],
            ),
          ),
        ]),
      );

  Widget _container() => Container(
        width: 130,
        height: 260,
        margin: const EdgeInsets.only(left: 6, right: 6),
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
                  child: Text("Header"),
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

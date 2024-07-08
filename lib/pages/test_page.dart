import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              _container(),
              _container(),
              _container(),
              _container(),
              _container(),
            ])),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              _container(),
              _container(),
              _container(),
              _container(),
              _container(),
            ])),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: <Widget>[
              _container(),
              _container(),
              _container(),
              _container(),
              _container(),
            ])),
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
      ],
    ));
  }

  Widget _container() => Container(
      width: 130,
      height: 260,
      margin: const EdgeInsets.all(6),
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
              Row(
                children: [
                  const SizedBox(
                    width: 65,
                    child: Row(
                      children: [
                        Icon(size: 11, Icons.star),
                        Icon(size: 11, Icons.star),
                        Icon(size: 11, Icons.star),
                        Icon(size: 11, Icons.star),
                        Icon(size: 11, Icons.star),
                      ],
                    ),
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
                      child: Row(
                        children: [
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
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          )));
}

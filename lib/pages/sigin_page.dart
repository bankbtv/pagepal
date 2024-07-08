import 'dart:convert';
import 'dart:developer';
import 'package:crypto/crypto.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pagepal_app/models/user.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Container(
                  height: constraints.maxHeight * .25,
                  alignment: Alignment.center,
                ),
                Container(
                  height: constraints.maxHeight * .75, // will get by column
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(24),
                    //   topRight: Radius.circular(24),
                    // )
                  ),
                  child: const _FormContent(),
                ),
              ],
            ),
            Positioned(
              top: constraints.maxHeight * .02,
              left: constraints.maxWidth / 2 - constraints.maxHeight * .15,
              right: constraints.maxWidth / 2 - constraints.maxHeight * .15,
              child: CircleAvatar(
                radius: constraints.maxHeight * .15,
                backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/logo.jpg",
                    ),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class _FormContent extends StatefulWidget {
  const _FormContent();

  @override
  State<_FormContent> createState() => __FormContentState();
}

class __FormContentState extends State<_FormContent> {
  bool _isPasswordVisible = false;
  bool _isrePasswordVisible = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names
  final _Email = TextEditingController();
  final _password = TextEditingController();
  final _repassword = TextEditingController();

  @override
  void initState() {
    // Make sure to call super.initState();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign up",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(132, 232, 252, 1),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 35),
            TextFormField(
              controller: _Email,
              validator: (value) {
                // add email validation
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value);
                if (!emailValid) {
                  return 'Please enter a valid email';
                }

                return null;
              },
              decoration: InputDecoration(
                // labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(38),
                ),
              ),
            ),
            _gap(),
            TextFormField(
              controller: _password,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                if (value != _repassword.text) {
                  return 'Password not match';
                }

                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                  // labelText: 'Password',
                  hintText: 'Enter your password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )),
            ),
            _gap(),
            TextFormField(
              controller: _repassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }

                if (value != _password.text) {
                  return 'Password not match';
                }

                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
              obscureText: !_isrePasswordVisible,
              decoration: InputDecoration(
                  // labelText: 'Password',
                  hintText: 'Enter your repassword',
                  prefixIcon: const Icon(Icons.lock_outline_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isrePasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _isrePasswordVisible = !_isrePasswordVisible;
                      });
                    },
                  )),
            ),
            _gap(),
            SizedBox(
              width: double.infinity,
              height: 75,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                    side: const BorderSide(
                      color: Color.fromRGBO(132, 232, 252, 1),
                      width: 4,
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Create account',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState?.validate() ?? false) {
                    if (await getUser()) {
                      createUser(_Email.text, _password.text);
                    } else {
                      return _showDialog();
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog() => showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            icon: const Icon(Icons.warning),
            title: const Text('Have a problem.'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('This user already exists.'),
                  Text('Go to Login page?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                onPressed: gotoLoginPage,
                child: const Text('log in'),
              ),
            ],
          );
        },
      );

  Widget _gap() => const SizedBox(height: 16);

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future<bool> getUser() async {
    var url = Uri.parse(
        'https://api.sheety.co/92c0d5a07efe5aeef0853188d274593f/apiSheetTest/user');
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(utf8.decode(res.bodyBytes));
      List<User> users = [];

      for (var each in jsonData["user"]) {
        final user = User(
            id: each["id"],
            userEmail: each["userEmail"],
            userPassword: each["userPassword"],
            createDate: each["createDate"]);
        users.add(user);
      }
      return checkUser(users);
    } else {
      // ignore: avoid_print
      print('Failed to fetch data');
      return false;
    }
  }

  bool checkUser(List<User> users) {
    for (var element in users) {
      if (element.userEmail == _Email.text) {
        return false;
      }
    }
    return true;
  }

  Future<void> createUser(String email, String password) async {
    var url = Uri.parse(
        'https://api.sheety.co/92c0d5a07efe5aeef0853188d274593f/apiSheetTest/user');
    http.Response res = await http.post(url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, Map<String, String>>{
          "user": {
            "userEmail": email,
            "userPassword": generateMd5(password),
            "createDate": DateTime.now().toString(),
          }
        }));
    if (res.statusCode == 200) {
      var jsonData = jsonDecode(utf8.decode(res.bodyBytes));
      log(jsonData["user"].toString());
      gotoLoginPage();
    } else {
      log('Failed to fetch data');
    }
  }

  void gotoLoginPage() {
    Navigator.pushNamed(context, '/login');
  }
}

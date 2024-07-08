import 'package:flutter/material.dart';

class WelcamePage extends StatelessWidget {
  const WelcamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(112, 161, 255, 1),
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: non_constant_identifier_names

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
              "Welcame",
              style: TextStyle(
                fontSize: 40,
                color: Color.fromRGBO(132, 232, 252, 1),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              height: 75,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(132, 232, 252, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(38),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Create account',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/sigin');
                },
              ),
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
                    'Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  // child: const Icon(
                  //   Icons.search,
                  //   size: 35,
                  // ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            _gap(),
            const Text("Sign in with another account")
          ],
        ),
      ),
    );
  }

  Widget _gap() => const SizedBox(height: 16);
}

import 'package:flutter/material.dart';
import 'package:appdev_task_1/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  left: MediaQuery.of(context).size.width * 0.82),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xffF9F0E1),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                  )
                ],
              ),
            ),
            // TextButton(onPressed: () {}, child: const Text("Skip"))),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 25,
                    left: 25),
                child: Column(
                  children: [
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: const Color(0xffEDF7F8),
                          radius: 100,
                          child: Image.asset(
                            'assets/images/download.png',
                            fit: BoxFit.cover,
                            width: 150.0,
                          ),
                        ), // Image.asset
                      ], //<Widget>[]
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 3,
                            backgroundColor: Colors.green),
                        child: const Text(
                          'Continue with Email',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 3,
                            backgroundColor: Colors.black87),
                        child: const Text(
                          'Continue with Apple',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 3,
                            backgroundColor: const Color(0xff5384ED)),
                        child: const Text(
                          'Continue with Google',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 3,
                            backgroundColor: const Color(0xff425892)),
                        child: const Text(
                          'Continue with Facebook',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                            foregroundColor: Colors.green,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: const Text(
                            'Sign Up',
                            // style: TextStyle(fontStyle: ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20, 135, 20, 20),
                      child: Text(
                        "By signing in, you agree to 7krave's Terms & Condition and Privacy Policy",
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

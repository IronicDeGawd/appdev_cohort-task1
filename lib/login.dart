import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08,
                  right: 35,
                  left: 35),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xffDAEFEF),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pushNamed(context, 'register');
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            // TextButton(onPressed: () {}, child: const Text("Skip"))),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.20,
                    right: 25,
                    left: 25),
                child: Column(
                  children: [
                    Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: const Color(0xffFFF6EB),
                          radius: 70,
                          child: Image.asset(
                            'assets/images/download.png',
                            fit: BoxFit.cover,
                            width: 90.0,
                          ),
                        ), // Image.asset
                      ], //<Widget>[]
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xffEBF7FA),
                          filled: true,
                          hintText: 'Enter your email',
                          hintStyle:
                          const TextStyle(fontSize: 15.0, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(width: 3, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffEBF7FA),
                          filled: true,
                          hintText: 'Password',
                          hintStyle:
                          const TextStyle(fontSize: 15.0, color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        )),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 16),
                            foregroundColor: const Color(0xffC74C4C),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            elevation: 3,
                            backgroundColor: Colors.green),
                        child: const Text(
                          'Sign In',
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
                      padding: EdgeInsets.fromLTRB(20, 180, 20, 20),
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

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  final gradientLogin = const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Color(0xff594FCC),
      Color(0xff398CBF),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              _blueBackground(context),
            ],
          ),
          _loginCard(),
          _buttonLogin(context),
        ],
      ),
    );
  }

  Widget _buttonLogin(context) {
    final paddingTop = MediaQuery.of(context).size.height * .76;
    return Padding(
      padding: EdgeInsets.fromLTRB(72, paddingTop, 72, 0),
      child: Column(
        children: [
          Container(
            height: 57,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            'FORGOT PASSWORD?',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget _loginCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: const EdgeInsets.only(top: 215),
        padding: const EdgeInsets.all(20),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.black26,
            ),
          ],
        ),
        child: Column(
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'EMAIL',
                  style: TextStyle(
                    color: Color.fromARGB(255, 25, 103, 205),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            const SizedBox(height: 35),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'PASSWORD',
                  style: TextStyle(
                    color: Color.fromARGB(255, 25, 103, 205),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _logoHome() {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(80),
        ),
        child: const Icon(
          Icons.home,
          color: Colors.blue,
          size: 50,
        ),
      ),
    );
  }

  Widget _blueBackground(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        gradient: gradientLogin,
      ),
      child: _logoHome(),
    );
  }
}

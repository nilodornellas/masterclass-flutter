import 'package:flutter/material.dart';

class MoneyControl extends StatelessWidget {
  const MoneyControl({Key? key}) : super(key: key);
  final color = 0xFF5e5bdc;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            logoMoneyControl(),
            const SizedBox(height: 40),
            title(),
            const SizedBox(height: 15),
            subtitle(),
            const SizedBox(height: 90),
            buttonSignUp(context),
            const SizedBox(height: 13),
            buttonSignUpGoogle(context),
            const SizedBox(height: 70),
            legenda(),
          ],
        ),
      ),
    );
  }

  Widget legenda() {
    return RichText(
      text: const TextSpan(
        text: 'Alredy have an account? ',
        children: [
          TextSpan(
            text: 'Sign in',
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }

  Widget buttonSignUpGoogle(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/icon_google.png',
            width: 16,
            height: 16,
          ),
          const SizedBox(width: 5),
          const Text(
            'Sign Up with Google',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget buttonSignUp(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width - 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'Sign Up with Email ID',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget title() {
    return const Text(
      'Get your money\nUnder Control',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget subtitle() {
    return Text(
      'Manage your expenses.\nSeamlessly.',
      style: TextStyle(
        color: Colors.grey[600],
        fontSize: 16,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget logoMoneyControl() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(color),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 5),
          width: 45,
          height: 90,
          decoration: BoxDecoration(
            color: Color(color),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(60),
            ),
          ),
        ),
      ],
    );
  }
}

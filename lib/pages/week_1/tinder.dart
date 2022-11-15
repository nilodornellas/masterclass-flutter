import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tinder extends StatelessWidget {
  const Tinder({super.key});
  final LinearGradient gradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color(0XFFEC7163),
      Color(0XFFEB5E6B),
      Color(0XFFE94B76),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        decoration: BoxDecoration(
          gradient: gradient,
        ),
        child: Stack(
          children: [
            _buttonBack(context),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _logoTinder(),
                const SizedBox(height: 100),
                _descricao(),
                const SizedBox(height: 60),
                _button('SIGN IN WITH APPLE', 'apple_logo_white.svg', context),
                const SizedBox(height: 8),
                _button('SIGN IN WITH FACEBOOK', 'facebook-round.svg', context),
                const SizedBox(height: 8),
                _button('SIGN IN WITH PHONE NUMBER',
                    'Mobile-Icon-White-on-Grey.svg', context),
                const SizedBox(height: 30),
                _footTip(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _footTip() {
    return const Text(
      'Trouble Singning In?',
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _button(String title, String img, context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width - 40,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: title.contains('PHONE')
                ? const Icon(
                    CupertinoIcons.chat_bubble_fill,
                    color: Colors.white,
                    size: 20,
                  )
                : SvgPicture.asset(
                    'assets/images/$img',
                    color: Colors.white,
                    height: 20,
                  ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _descricao() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'By taping Create Account or Sign In, your angree to our ',
          children: [
            TextSpan(
              text: 'Terms',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '. Learn how we process your data in our ',
              style: TextStyle(),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(),
            ),
            TextSpan(
              text: 'Cookies Policy',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _logoTinder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/tinder_logo.svg',
          color: Colors.white,
          height: 45,
        ),
        const SizedBox(width: 10),
        const Text(
          'tinder',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Chalet',
            fontSize: 50,
            height: 1.1,
          ),
        )
      ],
    );
  }

  Widget _buttonBack(context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        iconSize: 20,
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    );
  }
}

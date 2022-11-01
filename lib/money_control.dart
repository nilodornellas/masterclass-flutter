import 'package:flutter/material.dart';

class MoneyControl extends StatelessWidget {
  const MoneyControl({Key? key}) : super(key: key);
  final color = 0xFF5e5bdc;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logoMoneyControl(),
          ],
        ),
      ),
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
          margin: EdgeInsets.only(left: 5),
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

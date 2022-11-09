import 'package:flutter/material.dart';

class FacebookPage extends StatelessWidget {
  const FacebookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Wrap(
            alignment: WrapAlignment.center,
            children: [
              _title(mediaQuery),
              _cardLogin(mediaQuery),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(mediaQuery) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 250,
        maxWidth: mediaQuery.width < 900 ? 300 : 450,
      ),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: mediaQuery.width < 900
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            Text(
              'facebook',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.blue[600],
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'O Facebook ajuda você a se conectar e compartilhar com as pessoas que fazem parte da sua vida.',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign:
                  mediaQuery.width < 900 ? TextAlign.center : TextAlign.left,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _cardLogin(mediaQuery) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            padding: const EdgeInsets.all(20),
            height: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
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
                _form(hint: 'Email ou telefone'),
                const SizedBox(height: 10),
                _form(hint: 'Senha'),
                const SizedBox(height: 25),
                _buttonLogin(),
                const SizedBox(height: 25),
                _forgotPassword(),
                const SizedBox(height: 15),
                const Divider(),
                const SizedBox(height: 20),
                _buttonSignup(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _footerText(mediaQuery),
        ],
      ),
    );
  }
}

Widget _form({required String hint}) {
  return TextFormField(
    decoration: InputDecoration(
      border: const OutlineInputBorder(
        borderSide: BorderSide(width: 5),
      ),
      hintText: hint,
    ),
  );
}

Widget _buttonLogin() {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue[700],
      borderRadius: BorderRadius.circular(6),
    ),
    child: const Center(
      child: Text(
        'Entrar',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget _forgotPassword() {
  return Center(
    child: Text(
      'Esqueceu a senha?',
      style: TextStyle(
        color: Colors.blue[800],
        fontSize: 14,
      ),
    ),
  );
}

Widget _buttonSignup() {
  return Container(
    height: 50,
    width: 200,
    decoration: BoxDecoration(
      color: Colors.green[700],
      borderRadius: BorderRadius.circular(6),
    ),
    child: const Center(
      child: Text(
        'Criar nova conta',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}

Widget _footerText(mediaQuery) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      minWidth: 250,
      maxWidth: mediaQuery.width < 900 ? 400 : 450,
    ),
    child: RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Criar uma Página ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'para uma celebridade, uma marca ou uma empresa.',
          )
        ],
      ),
    ),
  );
}

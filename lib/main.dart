import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
              children: [
                Navbar(),
                Gap(),
                Images(),
                Gap(),
                Header(),
                Gap(),
                Desc(),
                Gap(),
                Desc(),
                Gap(),
                Button(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
            )
          ),
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.chevron_left_outlined,
          size: 40,
        ),
        Container(
          width: 58,
          height: 59,
          child: Image.asset("assets/images/starbuck.png"),
        ),
        Icon(
          Icons.favorite,
          size: 40,
          color: Colors.red,
        )
      ]
    );
  }
}

class Gap extends StatelessWidget {
  const Gap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 400,
      child: Image.asset('assets/images/frappucino.png'),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          "Chocolate Frappucino",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      Container(
        width: 100,
      ),
      Expanded(
        child: Text(
          "\$20.00",
          style: TextStyle(
            color: Color(0xFF00623B),
            fontSize: 40,
          ),
        )
      )
    ],
  );
  }
}

class Desc extends StatelessWidget {
  const Desc({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam at mi vitae augue feugiat scelerisque in a eros.",
      style: TextStyle(
        color: Color(0xFF6D6D6D),
        fontSize: 18,
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF00623B),
      ),
      padding: EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      child: Center(
        child: Text(
          "Add To Bag",
          style: TextStyle(
            color: Color(0xFFFFFFFFF),
            fontSize: 22,
          ),
        ),
      )
    );
  }
}
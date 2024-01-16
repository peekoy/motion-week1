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
                  Content(),
                  SizedBox(
                    height: 37,
                  ),
                  Detail(),
                  Gap(),
                  Button(),
                ]
              ),
            ),
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
          Icons.ios_share_outlined,
          size: 40,
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
      height: 51,
    );
  }
}

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 338,
      padding: EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xFFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(170, 170, 170, 0.12),
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(0,1),
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Color.fromRGBO(67, 147, 108, 0.20),
                    size: 63,
                  ),
                ),
                Container(
                  width: 63,
                  height: 63,
                  child: Icon(
                    Icons.check_circle,
                    color: Color(0xFF43936C),
                    size: 36,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "Transaksi Berhasil",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 9,
          ),
          Text(
            "Rp. 58,000",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Divider(
            color: Color.fromRGBO(0, 0, 0, 0.07),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Invoice Number",
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "000085752257",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tanggal Transaksi",
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "16 Juni 2023",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Jenis Pembayaran",
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "QRIS",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ],
                  ),
                )
              ],
            ) 
          )
        ],
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 378,
      height: 158,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color(0xFFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(170, 170, 170, 0.12),
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset(0,1),
          )
        ]
      ),
      child: Container(
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Detail Pesanan",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 0.96),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jenis Pesanan",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.54),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "2x Frappucino - Monte",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Nama Pemesan",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.54),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Asep Knalpot",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Pesanan",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.54),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Rp. 58,000",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 0.75),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 381,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.5),
        color: Color(0xFF00623B),
      ),
      child: Center(
        child: Text(
          "Download E - Ticket",
          style: TextStyle(
            color: Color(0xFFFFFFFFF),
            fontSize: 20,
          ),
        ),
      )
    );
  }
}
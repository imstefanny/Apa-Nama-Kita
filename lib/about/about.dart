import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Text(
            "About",
            style: GoogleFonts.lexendDeca(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset("/assets/ac88_simple.png"),
                Image.asset("/assets/logo_ac88.png"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Apa Nama Kita adalah perkumpulan pengembang aplikasi mobile yang ingin memberikan penyediaan jasa yang maksimal kepada pengguna dengan mempertimbangkan segala aspek dengan mengutamakan kenyamanan dan kemudahan bagi pengguna dalam memilih dan menggunakan jasa yang telah kami sediakan",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Dengan hadirnya AC88, kami menaruh harapan besar dalam pemyediaan pelayanan jasa servis AC yang nyaman, mudah dan fleksibel tergantung situasi dan kondisi dari para pengguna dengan didukung berbagai fitur yang dapat menjamin kepuasan dan keamanan pengguna",
                style: GoogleFonts.lexendDeca(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ));
  }
}

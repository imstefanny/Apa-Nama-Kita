import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

showMyBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: 450,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Text("About Us",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                SizedBox(height: 16),
                Text(
                    "Apa Nama Kita adalah perkumpulan pengembang aplikasi mobile yang ingin memberikan penyediaan jasa yang maksimal kepada pengguna dengan mempertimbangkan segala aspek dengan mengutamakan kenyamanan dan kemudahan bagi pengguna dalam memilih dan menggunakan jasa yang telah kami sediakan",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400, fontSize: 16)),
                SizedBox(height: 16),
                Text(
                    "Dengan hadirny AC88, kami menaruh harapan besar dalam pemyediaan pelayanan jasa servis AC yang nyaman, mudah dan fleksibel tergantung situasi dan kondisi dari para pengguna dengan didukung berbagai fitur yang dapat menjamin kepuasan dan keamanan pengguna",
                    style: GoogleFonts.lexendDeca(
                        fontWeight: FontWeight.w400, fontSize: 16))
              ],
            ),
          ),
        );
      });
}

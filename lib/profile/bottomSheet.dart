import 'package:flutter/material.dart';

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
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: const [
                Text("About Us", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 32),
                Text(
                    "Apa Nama Kita adalah perkumpulan pengembang aplikasi mobile yang ingin memberikan penyediaan jasa yang maksimal kepada pengguna dengan mempertimbangkan segala aspek dengan mengutamakan kenyamanan dan kemudahan bagi pengguna dalam memilih dan menggunakan jasa yang telah kami sediakan"),
                SizedBox(height: 32),
                Text(
                    "Dengan hadirny AC88, kami menaruh harapan besar dalam pemyediaan pelayanan jasa servis AC yang nyaman, mudah dan fleksibel tergantung situasi dan kondisi dari para pengguna dengan didukung berbagai fitur yang dapat menjamin kepuasan dan keamanan pengguna")
              ],
            ),
          ),
        );
      });
}

import 'package:flutter/material.dart';
import 'package:wonderful_kalsel/halaman/halaman_utama.dart';

class SelamatDatang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("image/welcome.jpg"),
        fit: BoxFit.cover,
        opacity: 0.9,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 2),
                Text("Di Selatan Borneo!",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.9),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    )),
                SizedBox(height: 12),
                Text(
                  "Pasar Terapung Lok Baintan berada di Sungai Martapura, Kalimantan Selatan. Ratusan perahu dan rakit penuh dengan makanan lezat, kerajinan tangan, dan budaya lokal. Dalam suasana yang meriah, pengunjung dapat menikmati kuliner khas, membeli oleh-oleh, dan merasakan kekayaan budaya Kalimantan Selatan yang tak ternilai harganya.",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.2),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HalamanUtama(),
                        ));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

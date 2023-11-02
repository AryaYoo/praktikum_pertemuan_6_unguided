import 'package:flutter/material.dart';
import 'package:flutter_application_1/cardMain.dart';
import 'package:flutter_application_1/Makanan/NasiGorengPage.dart';
import 'package:flutter_application_1/Makanan/CarbonaraPage.dart';
import 'package:flutter_application_1/Makanan/IkanWoku.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 163, 0)),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 185, 119),
        appBar: AppBar(
          title: Text(
            "Resep",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
          ),
          backgroundColor: Color.fromARGB(97, 255, 0, 0),
          leading: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back_ios_new_sharp),
            ),
          ),
          actions: [
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.bookmark_add_outlined),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          child: ListView(children: [
            buildCard(
                "Nasi Goreng Mawut",
                "Oleh Chef Yohan",
                "http://1.bp.blogspot.com/_dp_HDrdT4vc/TCeloWN-dYI/AAAAAAAAAFA/9A7spvGY57w/w1200-h630-p-k-nu/Nasi+Goreng+Mawut.JPG",
                "Berikut adalah resep nasi goreng mawut ala Yohan. Nasi goreng ini memiliki cita rasa yang khas dan unik dengan sentuhan kreatif dari Arya. Dengan bahan-bahan yang sederhana dan langkah-langkah yang mudah diikuti. Selamat mencoba dan nikmati kelezatan nasi goreng mawut ala Arya!",
                context,
                NasiGorengPage()),
            buildCard(
                "Carbonara",
                "Oleh Chef Yohan",
                "https://thestayathomechef.com/wp-content/uploads/2020/03/Pasta-Carbonara-2-3-scaled.jpg",
                "Berikut adalah resep carbonara ala Yohan. Carbonara ini memiliki cita rasa yang khas dan unik dengan sentuhan kreatif dari Arya. Dengan bahan-bahan yang sederhana dan langkah-langkah yang mudah diikuti. Selamat mencoba dan nikmati kelezatan carbonara ala Arya!",
                context,
                CarbonaraPage()),
            buildCard(
                "Ikan Woku",
                "Oleh Chef Arthure la passione",
                "https://i2.wp.com/resepkoki.id/wp-content/uploads/2017/10/Resep-Ikan-Woku-Belanga.jpg?fit=1896%2C1388&ssl=1",
                "Berikut adalah resep ikan woku ala Arthure la Passione. Ikan woku ini memiliki cita rasa yang khas dan unik dengan sentuhan kreatif dari Arthure la Passione. Dengan bahan-bahan yang sederhana dan langkah-langkah yang mudah diikuti. Selamat mencoba dan nikmati kelezatan ikan woku ala Arthure la Passione!",
                context,
                WokuPage()),
          ]),
        ),
      ),
    );
  }
}

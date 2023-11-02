import "package:flutter/material.dart";

class CarbonaraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 185, 119),
      appBar: AppBar(
        title: Text('Halaman Kedua'),
        backgroundColor: Color.fromARGB(97, 255, 0, 0),
        leading: Container(
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: ListView(children: [
          buildCardCarbonara("Carbonara", "Oleh Chef Yohan",
              "Carbonara adalah hidangan pasta klasik dari Italia yang terkenal dengan cita rasa creamy, gurih, dan lezat. Hidangan ini biasanya terdiri dari pasta yang diaduk bersama pancetta (atau bacon), telur, keju parmesan, dan lada hitam. Keunikan carbonara terletak pada penggunaan telur yang menciptakan saus kental dan creamy tanpa harus menggunakan krim. Pancetta atau bacon memberikan rasa gurih yang sempurna, dan parmesan menambahkan sentuhan keju yang khas. Hidangan ini sering disajikan dalam keadaan panas, dengan pasta yang terbalut dalam saus carbonara yang melapisi setiap gigitan. Carbonara adalah contoh sempurna dari harmoni sederhana bahan-bahan yang menghasilkan hidangan pasta yang tak terlupakan dalam dunia kuliner Italia."),
          buildCardCarbonara(
              "Bahan", "", """300 gram spaghetti atau pasta jenis lainnya
150 gram pancetta atau guanciale (daging babi asin, bisa diganti dengan bacon), potong dadu kecil
3 butir telur, suhu ruangan
1 cangkir parmesan, keju pecorino, atau campuran keduanya, parut
2 siung bawang putih, cincang halus
Garam dan merica secukupnya
2 sendok makan minyak zaitun
2 sendok makan mentega"""),
          buildCardCarbonara("Langkah-langkah", "",
              """1. Rebus pasta dalam air garam hingga al dente sesuai petunjuk kemasan. Tiriskan dan sisihkan sekitar 1/2 cangkir air rebusan pasta.

2. Panaskan minyak zaitun dalam wajan besar. Tumis pancetta atau guanciale hingga kecokelatan dan krispi. Tambahkan bawang putih dan tumis sebentar hingga harum.

3. Campur telur, parmesan (atau pecorino), garam, dan merica dalam mangkuk besar. Aduk rata.

4. Segera setelah pasta matang, campur pasta panas dengan campuran telur dan keju. Pastikan aduk rata sehingga pasta terbalut dengan baik. Jika pasta terasa terlalu kering, tambahkan sedikit air rebusan pasta yang disisihkan.

5. Sajikan dengan taburan keju parmesan ekstra dan merica hitam. Anda juga bisa menambahkan potongan pancetta atau guanciale yang sudah digoreng sebagai hiasan.""")
        ]),
      ),
    );
  }
}

Card buildCardCarbonara(
  title,
  String date,
  String desc,
) {
  return Card(
    margin: EdgeInsets.all(20),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            date,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
          ),
          Divider(),
          SizedBox(height: 20),
          Text(
            desc,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
          ),
        ],
      ),
    ),
  );
}

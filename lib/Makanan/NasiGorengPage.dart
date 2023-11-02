import "package:flutter/material.dart";

class NasiGorengPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 185, 119),
      appBar: AppBar(
        title: Text('Nasi Goreng Mawut'),
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
        child: ListView(
          children: [
          buildCardNasiGoreng(
            "Nasi Goreng Mawut",
            "Oleh Chef Yohan",
            "Nasi goreng mawut adalah hidangan Indonesia yang lezat yang biasanya terdiri dari nasi goreng yang disajikan dengan mi goreng."
          ),
          buildCardNasiGoreng(
            "Bahan",
            "",
            "2 piring nasi dingin (sebaiknya nasi yang sudah satu hari)\n100 gram mi telur atau mi instan, rebus dan tiriskan\n2 butir telur, kocok lepas\n150 gram ayam fillet, potong dadu kecil\n150 gram udang, kupas\n3 siung bawang putih, cincang halus\n2 batang daun bawang, iris tipis\n2 sendok makan kecap manis\n1 sendok makan saus tiram\n1 sendok makan saus cabai (sesuai selera)\nGaram dan merica secukupnya\nMinyak goreng secukupnya\nBawang merah goreng (optional, untuk hiasan)\n"
          ),
          buildCardNasiGoreng(
            "Langkah-langkah",
            "",
            "1. Panaskan sedikit minyak dalam wajan besar atau wok. Tumis bawang putih hingga harum.\n\n2. Tambahkan ayam dan udang, tumis hingga berubah warna dan matang.\n\n3. Dorong bahan tumisan ke tepi wajan, lalu tuangkan telur kocok ke tengah wajan. Aduk-aduk hingga telur matang dan berbentuk serpihan kecil.\n\n4. Masukkan nasi ke dalam wajan. Aduk rata dengan bahan lainnya.\n\n5. Tambahkan mi goreng yang sudah direbus, dan aduk rata dengan nasi.\n\n6. Tambahkan kecap manis, saus tiram, dan saus cabai. Aduk kembali hingga semua bahan tercampur rata.\n\n7. Bumbui dengan garam dan merica sesuai selera. Aduk terus hingga nasi dan mi goreng terasa panas dan matang sempurna.\n\n8. Masukkan daun bawang, aduk sebentar, dan angkat dari api.\n\n9. Sajikan nasi goreng mawut panas dengan taburan bawang merah goreng (jika suka).\n\n10. Semoga ini membantu, dan selamat mencoba!"
          )
          //================================Halaman Nasgor=========================
        ]),
      ),
    );
  }
}

Card buildCardNasiGoreng(title, String date, String desc,) {
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

import "package:flutter/material.dart";

class WokuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 185, 119),
      appBar: AppBar(
        title: Text('Ikan Woku'),
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
          buildCardWoku(
            "Ikan Woku",
            "Oleh Chef Arthure la Passione",
            "Ikan Woku adalah sebuah hidangan khas Indonesia, tepatnya dari daerah Sulawesi. Hidangan ini dikenal karena kombinasi yang kaya rasa, yang menggabungkan ikan segar dengan bumbu-bumbu rempah yang khas. Rempah-rempah yang digunakan dalam hidangan ini menciptakan rasa pedas, harum, dan lezat. Ikan Woku sering kali disajikan dengan kuah yang menggoda, terutama saat bumbu-bumbu yang kuat meresap ke dalam daging ikan, menciptakan hidangan yang menggugah selera dan tak terlupakan."
          ),
          buildCardWoku(
            "Bahan",
            "",
            "500 gram ikan (pilih ikan seperti tenggiri atau nila)\n2 batang serai, memarkan\n4 lembar daun jeruk, iris tipis\n2 lembar daun salam\n2 lembar daun kunyit (opsional)\n1 sendok makan minyak kelapa (atau minyak sayur)\nGaram secukupnya"
          ),
          buildCardWoku(
            "Langkah-langkah",
            "",
            "1. Bersihkan ikan, potong sesuai selera, dan beri sedikit garam. Diamkan sebentar.\n\n2. Panaskan minyak dalam wajan. Tumis bumbu halus, serai, daun jeruk, daun salam, dan daun kunyit (jika digunakan) hingga harum dan berubah warna.\n\n3. Masukkan ikan ke dalam wajan. Aduk perlahan hingga ikan berubah warna dan tercampur dengan bumbu.\n\n4. Tambahkan sedikit air, cukup untuk merebus ikan (sekitar 100 ml). Masak hingga ikan matang dan kuah menyusut.\n\n5. Koreksi rasa dengan garam sesuai selera.\n\n6. Sajikan ikan woku panas dengan nasi putih atau nasi kunyit.\n\n7. Semoga ini membantu, dan selamat mencoba hidangan ikan woku yang lezat ini"
          )
          //================================Halaman Nasgor=========================
        ]),
      ),
    );
  }
}

Card buildCardWoku(title, String date, String desc,) {
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

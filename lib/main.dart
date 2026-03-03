import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  final List<Map<String, String>> komentar = [
    {
      "nama": "Alexis Sanchez",
      "isi": "Wahh Baru Tau Nih kalo Donald Trump Anjing",
    },
    {"nama": "Michael Jordan", "isi": "Anjingnya Nganjing Banget"},
    {"nama": "Joko Widodo", "isi": "Wahhh Parah Nihhh Anjingnya"},
    {
      "nama": "Vladimir Putin",
      "isi": "Udah Gua Bilang Dari Awal Kalo Dia Tuh Anjing Nya Israel",
    },
    {"nama": "Kim Jong Un", "isi": "Kuyy Ahh njing"},
    {
      "nama": "Mohamed Bin Salman",
      "isi": "Kawanku Kasian Sekali Dikutuk jadi Anjing",
    },
    {"nama": "Netanyahu", "isi": "Euuu Bestiee kuuu"},
    {"nama": "Ali Khamenei", "isi": "Terkutuklah kauuu njing"},
    {"nama": "Prabowo Subianto", "isi": "MBG Gratis Nich, Pakai Daging Anjing"},
    {
      "nama": "Barack Obama",
      "isi": "Alhamdulillah Aku Gak Dhzolim dan Dikutuk Jadi Anjing",
    },
    {
      "nama": "Megawati Soekarnoputri",
      "isi": "Mending Gua Korupsi Aja Daripada Liat Ginian",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Colors.red.shade700,
          centerTitle: true,
          title: Text(
            "Aplikasi Berita",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.newspaper, color: Colors.red.shade700),
                    SizedBox(width: 8),
                    Text(
                      "Artikel Terbaru",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                        child: Image.network(
                          'https://picsum.photos/id/237/400/250',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Donald Trump Berubah Menjadi Anjing",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Hal yang tidak pernah kamu ketahui tentang Donald Trump.",
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25),

                Text(
                  "Komentar",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),

                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: komentar.length,
                  itemBuilder: (context, index) {
                    final data = komentar[index];
                    return Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red.shade400,
                              child: Text(
                                data["nama"]![0],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    data["nama"]!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    data["isi"]!,
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

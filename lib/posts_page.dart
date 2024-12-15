import 'package:flutter/material.dart';
import 'detail_posts.dart'; // Import halaman detail_posts.dart

class PostsPage extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'title': '1. Tanamera Coffee & Roastery',
      'description':
          'Tanamera Coffee & Roastery merupakan restoran dan cafe yang menyajikan aneka kopi. Tidak perlu khawatir, minuman di sini dibanderol harga terjangkau.'
'Penyuka kopi hitam bisa mencicipi espresso, Americano hot, Americano iced, daily brew V-60 hot, daily brew V-60 iced dan daily brew tubruk.'
'Sementara itu, penyuka white coffee bisa mencicipi macchiato, piccolo, flat white, cafe latte, cappuccino, vanilla latte, caramel latte, hazelnut, mocha dan affogato.'
'Alamat cafe di Banjarmasin yang murah ini di Jalan Gatot Subroto Raya Nomor 4, Kelurahan Kuripan, Kecamatan Banjarmasin Timur, Kota Banjarmasin.',
      'image': 'assets/images/Tamara Coffee.jpg', // Local asset
    },
    {
      'title': '2. Cafe California',
      'description':
          'Cafe California buka setiap hari mulai pukul 10.00 sampai 22.00. Pengunjung bisa memesan aneka makanan ala Barat, nasi dan minuman.'
'Menu yang direkomendasikan antara lain coffee, mocktail, milkshake, pasta, dessert dan varian kue. Ada pula nasi ayam krispi dengan saus Inggris spesial.'
'Pengunjung cafe di Banjarmasin ini pun bisa menikmati menu promo dengan harga yang sangat bersahabat. Misalnya dua paket rice bowl hanya Rp45.000 saja.'
'Alamat Cafe California di Jalan Kuripan Nomor 11 A, Kelurahan Kuripan, Kecamatan Banjarmasin Timur, Kota Banjarmasin.',
      'image': 'assets/images/Cafe California.jpg', // Local asset
    },
    {
      'title': '3. KALA Cafe',
      'description':
          'KALA Cafe merupakan salah satu tempat nongkrong favorit pemuda pemudi Banjarmasin. Cafe ini pun nyaman sebagai tempat menyelesaikan pekerjaan dan tugas.'
'Suasana KALA Cafe mengusung tema industrial. Lantai dan dindingnya menggunakan semen ekspos yang menampilkan kesan unfinished.'
'Adapun menu KALA Cafe yang wajib dicoba oleh pengunjung, yaitu rujak jelly squash dan tahu bakso, sedangkan minumannya adalah Kopi KALA.'
'Alamat KALA Cafe di Jalan Gatot Subroto Nomor 76D, Kelurahan Kebun Bunga, Kecamatan Banjarmasin Timur, Kota Banjarmasin.',
      'image': 'assets/images/KALA Cafe.jpg', // Local asset
    },
    {
      'title': '4. Dabomb Cafe and Ice',
      'description':
          'Dabomb Cafe and Ice menyediakan suasana cafe yang tenang. Jadi tempat ini cocok bagi kamu yang kurang menyukai suasana ramai.'
'Nongkrong di sini rasanya seperti nongkrong di rumah sendiri. Apalagi pemilik cafe mempermanis tempatnya dengan aneka tanaman hidroponik.'
'Menu yang bisa kamu coba antara lain risoles sayuran, chicken katsu nasi, ayam geprek, chicken katsu kentang, dan takoyaki ayam. Harga menunya pun terjangkau ya.'
'Alamat Dabomb Cafe and Ice di Jalan Anggrek Nomor 20, Kelurahan Kebun Bunga, Kecamatan Banjarmasin Timur, Kota Banjarmasin.',
      'image': 'assets/images/Dabomb.jpg', // Local asset
    },
    {
      'title': '5. Cafe WEN',
      'description':
          'Cafe WEN mengangkat tema desain interior bernuansa hangat. Aksen kayu dengan finishing alami mendominasi ruangan di salah satu cafe Banjarmasin ini.'
'Banyak pilihan menu minuman yang tersedia seperti kelompok bubble drink, mocktail, bubble drink with topping, milk shake, minuman segar serta aneka teh dan kopi.'
'Adapun fasilitas yang tersedia di sini, yaitu fasilitas nonton bareng, live music, Wi-Fi, dan toilet. Kehadiran fasilitas ini tentunya membuat nongkrong makin seru.'
'Alamat cafe di Banjarmasin yang ada live music ini di Jalan Cemara Raya Nomor 47, Kelurahan Sungai Miai, Kecamatan Banjarmasin Utara, Kota Banjarmasin.',
      'image': 'assets/images/Cafe WEN.jpg', // Local asset
    },
    {
      'title': '6. Jungle Coffee Bar',
      'description':
          'Seperti namanya, Jungle Coffee Bar menawarkan suasana cafe yang rimbun dengan pepohonan. Di sini pengunjung bisa menikmati desain interior bertema rustic.'
'Uniknya lagi, lokasi bangunan Jungle Coffee Bar ini berada di atas rawa. Posisinya agak tersembunyi sehingga bisa disebut salah satu hidden gem di Banjarmasin.'
'Es Kopi Susu Buaya merupakan minuman yang wajib dicoba pengunjung. Kopi ini menggunakan nama buaya karena menawarkan cita rasa yang sangat manis.'
'Alamat Jungle Coffee Bar di Jalan Pramuka Nomor 3, Kelurahan Sungai Lulut, Kecamatan Banjarmasin Timur, Kota Banjarmasin.',
      'image': 'assets/images/Jungle Coffee.jpg', // Local asset
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Check if image is a local asset or a network URL
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: post['image']!.startsWith('assets/')
                        ? Image.asset(
                            post['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            post['image']!,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                  ),
                  SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post['title']!,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          post['description']!,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[600],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 12.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigasi ke halaman detail post
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPostPage(
                                    title: post['title']!,
                                    description: post['description']!,
                                    image: post['image']!,
                                  ),
                                ),
                              );
                            },
                            child: Text('Read More'),
                          ),
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
    );
  }
}

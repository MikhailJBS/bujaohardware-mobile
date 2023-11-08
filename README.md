# bujaohardware

# Tugas 7 PBP 2023/2024
* Nama: Mikhail Haritz
* NPM: 2206082764
* Kelas: PBP-F

##  Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter
Dalam pengembangan aplikasi Flutter, terdapat dua jenis widget utama: `stateless` (tanpa keadaan) dan `stateful` (dengan keadaan). Perbedaan utama antara keduanya adalah bagaimana mereka mengelola dan merespons perubahan data serta bagaimana mereka digunakan dalam pembangunan antarmuka pengguna. Berikut perbedaan utama antara keduanya:

* **Stateless Widget**: <br>Stateless widget adalah widget yang tidak memiliki keadaan internal. Artinya, setelah dibuat, mereka tidak dapat mengubah tampilan atau data yang ditampilkan.
Stateless widget cocok untuk bagian-bagian aplikasi yang tidak memerlukan pembaruan berdasarkan perubahan data, seperti teks statis atau ikon.
Contoh stateless widget adalah `Text`, `Icon`, dan `Image`.

* **Stateful Widget**: <br> Stateful widget adalah widget yang memiliki keadaan internal yang dapat berubah selama masa hidup widget. Mereka memungkinkan untuk memperbarui tampilan dan merespons perubahan data atau interaksi pengguna. Stateful widget cocok untuk bagian-bagian aplikasi yang memerlukan pembaruan tampilan berdasarkan data yang berubah, seperti daftar item yang dapat digulir, formulir, atau tampilan yang dapat diubah oleh pengguna. Stateful widget terdiri dari dua kelas terpisah: kelas widget itu sendiri dan kelas `State` yang mengelola keadaan internal. Kelas `State` memungkinkan untuk memperbarui data dan merespons perubahan.

Dalam konteks Flutter, perbedaan utama antara keduanya adalah bahwa stateless widget tidak dapat mengubah tampilan atau merespons perubahan, sementara stateful widget dapat mengubah tampilan dan merespons perubahan data atau interaksi pengguna. 

##  Widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

* `MyApp` (StatelessWidget): <br>Ini adalah widget utama yang mewakili aplikasi utuh. Ini mengatur tema aplikasi dan menentukan halaman beranda.

* `MaterialApp` (Widget): <br>Ini adalah widget yang digunakan untuk mengonfigurasi aplikasi dengan judul, tema, dan beranda. Ini adalah tempat utama untuk mengatur tema aplikasi.

* `MyHomePage` (StatelessWidget): <br>Ini adalah halaman beranda aplikasi yang berisi daftar item dan ditampilkan di dalam Scaffold.

* `ShopItem` (Class): <br>Ini adalah kelas model yang digunakan untuk merepresentasikan item dalam daftar dan setiap item memiliki nama dan ikon.

* `ShopCard` (StatelessWidget): <br>Ini adalah widget yang digunakan untuk membuat card untuk item dalam daftar. Card ini berisi ikon dan nama item, dan memiliki latar belakang warna yang berbeda.

* `ImageShopCard` (StatelessWidget): <br>Widget yang mirip dengan ShopcCard tapi melainkan warna bg, dia mempunyai gambar sebagai bg nya.

* `GridView` (Widget): <br>Ini adalah widget yang digunakan untuk menampilkan daftar item dalam bentuk grid. Digunakan untuk mengatur tampilan daftar item dalam tata letak grid.

* `AppBar` (Widget): <br>Ini adalah bar atas aplikasi yang menampilkan judul aplikasi. Digunakan sebagai bar atas halaman utama.

* `Padding` (Widget): <br>Ini adalah widget yang digunakan untuk menambahkan jarak di sekitar widget anaknya.

* `InkWell` (Widget): <br>Ini adalah widget yang digunakan untuk membuat area yang dapat ditekan (tappable). Digunakan untuk menambahkan efek respons ketika kartu diklik.

* `Scaffold` (Widget): <br>Ini adalah kerangka dasar untuk halaman aplikasi yang menyediakan struktur dasar seperti AppBar dan body. Digunakan untuk mengatur tampilan aplikasi.

* Beberapa widget dasar seperti `Text`, `Icon`, dan `Container` juga digunakan untuk menampilkan teks, ikon, dan tampilan lainnya dalam kartu.

## Penjelasan pengimplementasian checklist pada soal.
1. Saya membuat app Flutter baru dengan menjalankan command `flutter create` dengan nama appnya adalah sama dengan nama web pada tugas PBP saya kemarin.

2. Saya membuat `menu.dart` yang berisi komponen-komponen aplikasi saya, salah satunya adalah Tappable Cards yang berisi opsi. Untuk menerapkannya saya membuat class `ShopItem` dan membuat beberapa objek (3) yang merupakan opsi dari toko ini. Pada class tersebut terdapat `string nama` dan juga `icon` yang merupakan komponen dari flutter. Setelah itu saya membuat 2 `StatelessWidget` bernama `ShopCard` dan `ImageShopCard` dengan atribut shopitem tadi dan juga warna/gambar bg. Perbedaan kedua widget itu ada di bg nya dimana `ImageShopCard` menggunakan gambar dari image hosting site online yang di dapat dengan `ImageNetwork` sebagai bg nya. <br> <br> Setelah itu saya memunculkan widget yang telah dibuat menggunakan `GridView` untuk mengatur posisinya dan untuk menentukan posisi widget nya. Pada kode ini saya menjadikan item kedua dari `ShopItem` sebagai `ImageShopCard` dan sisanya `ShopCard`. Saya juga mengatur setiap padding dan tulisan pada setiap card agar warnanya sesuai keinginan saya.
<br>
<br>
<br>
<br>
<br>
<br>

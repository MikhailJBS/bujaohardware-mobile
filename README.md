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

# Tugas 8 PBP 2023/2024
* Nama: Mikhail Haritz
* NPM: 2206082764
* Kelas: PBP-F

##  Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`
* **`Navigator.push()`** <br>digunakan untuk menambahkan route baru ke dalam tumpukan (stack) navigasi di Flutter. Ketika Anda menggunakan metode ini, route baru ditambahkan di atas route saat ini, dan pengguna dapat kembali ke route sebelumnya. <br><br> Contohnya:
```
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondScreen()),
);
```

* **`Navigator.pushReplacement()`**: <br>digunakan untuk menggantikan route saat ini dengan route baru. Ini bermanfaat ketika Anda ingin menghindari pengguna kembali ke halaman sebelumnya. <br><br> Contohnya:
```` 
// Menggantikan halaman saat ini dengan halaman baru
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => NewScreen()),
);
````

##  Layout Widget pada Flutter dan Konteks Penggunaannya:
1. **`Container`:**<br> Digunakan sebagai wadah umum untuk menempatkan widget lain. Memungkinkan pengaturan seperti padding, margin, dan dekorasi.

2. **`Column dan Row`:**<br> Digunakan untuk menata widget secara vertikal (Column) atau horizontal (Row). Berguna ketika perlu menampilkan widget secara berurutan.

3. **`Stack`:**<br> Memungkinkan penempatan widget di atas widget lainnya, sering digunakan untuk tumpukan elemen yang tumpang tindih.

4. **`ListView dan GridView`:**<br> Digunakan untuk menampilkan daftar elemen dalam bentuk vertikal (ListView) atau grid (GridView). Berguna untuk menangani daftar atau tata letak grid.

5. **`Expanded dan Flexible`:**<br> Digunakan untuk mengendalikan sejauh mana widget memperluas diri dalam tata letak fleksibel, membantu dalam pengaturan ruang.

6. **`SizedBox`:**<br> Digunakan untuk memberikan dimensi tetap pada widget, baik itu lebar, tinggi, atau keduanya.

7. **`Card`:**<br> Sebuah wadah dengan sudut membulat dan bayangan yang sering digunakan untuk menampilkan informasi terkait.

8. **`AppBar`:**<br> Mewakili baris aplikasi yang menyediakan judul dan tindakan. Digunakan sebagai elemen teratas dalam antarmuka pengguna.

## Bagaimana penerapan clean architecture pada aplikasi Flutter?
`Clean Architecture` adalah pendekatan untuk mengorganisir kode agar bersih, terpisah, dan mudah diuji. Pada aplikasi Flutter, clean architecture melibatkan pembagian kode ke dalam tiga lapisan utama: `Domain`, `Data`, dan `Presentation`.

Lapisan Domain berisi aturan bisnis dan logika aplikasi. Lapisan Data berisi implementasi pengambilan data dari sumber eksternal. Lapisan Presentation adalah antarmuka pengguna dan mengurus tampilan serta input pengguna.

Penggunaan clean architecture membantu memisahkan tanggung jawab, membuat kode lebih mudah diuji, dan meningkatkan fleksibilitas dan skalabilitas proyek Flutter.

## Penjelasan pengimplementasian checklist pada soal.
1. Saya membuat `screens` baru bernama `itemform.dart` untuk page formnya. Dan pada form ini saya mempunyai 4 input yakni `name`, `price`, `amount`, `description` sesuai model pada tugas `Django` sebelum UTS. Pada page ini juga saya mempunya itombol save yang saya implementasikan dengan menggunakan `ElevatedButon`. Selanjutnya saya menggunakan `validator` agar semua input valid (tidak boleh null atau tidak boleh beda tipe dengan tipe atribut modelnya)

2. Pada `menu.dart` saya menggunakan `navigator` ketika tombol `Tambah Item` di tap agar bisa pindah ke halaman `itemform.dart`

3. Pada halaman form, ketika tombol `save` di tap dan semua input valid, maka dia akan memunculkan popup yang berisikan informasi item dengan atribut sesuai yang telah diinput tadi.

4. Saya membuat drawer dengan cara membuat file widget baru bernama `drawer.dart` dan mengimportnya ke `menu.dart`. Pada drawer ini saya membuat `ListTile` yang berisi `Icon` dan `Text` untuk setiap menu-nya. Saya juga menambahkan routing menggunakan `navigator` agar ketika salah satu menu di tap, maka dia akan pindah ke halaman yang sesuai dengan menu yang di tap. Terakhir, saya import dan build `widget` drawer ini di `menu.dart` agar bisa muncul di halaman utama.

5. **Bonus**<br> Pada bonus kali ini, di halaman `itemform.dart` saya membuat sebuah class baru bernama item dengan atribut yang sama seperti saya sebutkan diatas. Setelah itu saya membuat `class` lain untuk menyimpan objek-objek dari class item tsb. Setelah itu saya membuat page baru bernama `itemlist.dart` yang berfungsi untuk menampilkan semua item yang telah dibuat oleh user dalam bentuk `card`. Terakhir, saya routing halaman `itemlist.dart` ini ke drawer dan `menu.dart` yang telah saya buat sebelumnya agar bisa diakses oleh user.
<br>
<br>
<br>
<br>
<br>
<br>

# Tugas 9 PBP 2023/2024
* Nama: Mikhail Haritz
* NPM: 2206082764
* Kelas: PBP-F

## Pengambilan data JSON tanpa membuat model terlebih dahulu
* Dengan menggunakan `dart:convert` kita bisa melakukan pengambilan data JSON tanpa membuat model di sisi Flutter terlebih dahulu. Flutter mendukung pengolahan data JSON secara dinamis dengan menggunakan library bawaan seperti `dart:convert`.

* **Tanpa Membuat model** <br>**Keuntungan**: Cepat dan fleksibel untuk prototyping dan pengembangan awal. <br><br>**Kekurangan**: Kurangnya type safety, lebih rentan terhadap kesalahan runtime jika struktur JSON berubah.

* **Membuat model** <br>**Keuntungan**: Type safety, lebih mudah mengelola data, dan memanfaatkan fitur-fitur OOP untuk kode yang lebih terstruktur. <br><br>**Kekurangan**: Membutuhkan waktu lebih untuk setup awal dan penyesuaian jika ada perubahan pada struktur JSON backend.

##  Fungsi `CookieRequest`
Salah satu kegunaan dari `CookieRequest` adalah untuk menyimpan session user yang logged in kedalam app flutter untuk memudahkan integrasi webserver, terutama untuk beberapa fitur yang membutuhkan session login seperti fitur `logout`, `itemForm`, serta fetching data punya user yang sedang login.

## Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Singkatnya, mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter adalah sebagai berikut:

1. Membuat class model untuk menyimpan data yang diambil dari JSON. Class ini harus memiliki atribut yang sama dengan atribut yang ada di JSON.

2. Mendapatkan `JSON` dari web server menggunakan `http.get()` atau `request.get()` serta mencantumkan `URL` endpoint yang akan diambil datanya.

3. Mengubah `JSON` menjadi `List` atau `Map` menggunakan `json.decode()`. Pub `pbp_auth` telah menyediakan fungsi `get` yang otomatis mengubah json menjadi `List` atau `Map`.

4. Mengambil data dari `List` atau `Map` menggunakan `List.map()` atau `Map.map()`.

5. Menampilkan data yang telah diambil dari `List` atau `Map` menggunakan `ListView` atau `GridView`.

## Mekanisme autentikasi dari input data akun pada Flutter ke Django
1. Meminta input username dan password dari user.

2. Membuat `CookieRequest` baru yang nantinya akan digunakan untuk mengirimkan data ke web server dan menyimpan user session yang telah ter autentikasi.

3. Mengirimkan data ke web server menggunakan `CookieRequest.post()` atau pada pub `pbp_auth` telah menyediakan method `login()` dengan mencantumkan `URL` endpoint yang akan menerima data seperti message dll.

4. Jika login berhasil, maka akan muncul popup yang berisi informasi bahwa login berhasil dan akan pindah ke halaman utama yang menampilkan menu.

## Seluruh widget yang dipakai pada tugas ini dan jelaskan fungsinya masing-masing.
Selain widget-widget yang telah saya jelaskan pada tugas 7, pada tugas 9 ini saya juga menggunakan widget-widget berikut:

1. `Drawer` <br> Digunakan untuk membuat drawer yang berisi menu-menu yang dapat diakses oleh user. <br><br>
2. `ListTile`<br> Digunakan untuk membuat menu-menu pada drawer serta membuat list item pada halaman `itemlist.dart`. <br><br>
3. `TextFormField` <br> Digunakan untuk membuat input field pada halaman `itemform.dart` serta pada modul lain yang membutuhkan input seperti `login.dart` dan `register.dart`. <br><br>
4. `ElevatedButton` <br> Digunakan untuk membuat tombol pada halaman `itemform.dart` serta pada modul lain yang membutuhkan tombol seperti `login.dart` dan `register.dart`. <br><br>
5. `AlertDialog` <br> Digunakan untuk membuat popup pada halaman `itemform.dart` serta pada modul lain yang membutuhkan popup seperti `login.dart` dan `register.dart`. <br><br>
6. `FutureBuilder` <br> Digunakan untuk membuat widget yang akan dibangun di masa depan. <br><br>
7. `CircularProgressIndicator` <br> Digunakan untuk membuat indikator loading pada halaman `itemlist.dart` dan `itemform.dart`. <br><br>
8. `ListView.builder` <br> Digunakan untuk membuat list item pada halaman `itemlist.dart`. <br><br>
9. `GridView.builder` <br> Digunakan untuk membuat grid item pada halaman `itemlist.dart`. <br><br>
10. `Card` <br> Digunakan untuk membuat card pada halaman `itemlist.dart`. <br><br>
11. `FloatingActionButton`<br> Digunakan untuk membuat tombol tambah item pada halaman `itemlist.dart`. <br><br>

## Penjelasan pengimplementasian checklist pada soal.
1. Saya membuat `login.dart` dan `register.dart` yang berfungsi untuk mengambil data dari user dan mengirimkannya ke web server. Pada `login.dart` saya menggunakan `CookieRequest` untuk mengirimkan data ke web server dan menyimpan user session yang telah ter autentikasi. Jika login berhasil, maka akan muncul popup yang berisi informasi bahwa login berhasil dan akan pindah ke halaman utama yang menampilkan menu. Pada `register.dart` saya menggunakan `HTTP` dengan `.post()` untuk mengirimkan data yang diinput di field-field register ke django webserver. Jika register berhasil, maka akan muncul popup yang berisi informasi bahwa register berhasil dan akan pindah ke halaman login.

2. Saya membuat model `Items` untuk menyimpan data yang dikirim dari `django` webserver saya dengan cara memakai `quicktype.io` untuk mengubah `JSON` menjadi `Dart` model. Setelah itu saya membuat `itemlist.dart` yang berfungsi untuk menampilkan semua item yang telah dibuat oleh user dalam bentuk `card`. Pada halaman ini saya menggunakan `FutureBuilder` untuk membuat widget yang akan dibangun di masa depan. Saya juga menggunakan `CircularProgressIndicator` untuk membuat indikator loading. Setelah itu saya membuat `itemform.dart` yang berfungsi untuk membuat item baru. Pada halaman ini saya menggunakan `TextFormField` untuk membuat input field dan `ElevatedButton` untuk membuat tombol. Saya juga menggunakan `AlertDialog` untuk membuat popup. Terakhir, saya membuat `drawer.dart` yang berfungsi untuk membuat drawer yang berisi menu-menu yang dapat diakses oleh user. Pada halaman ini saya menggunakan `ListTile` untuk membuat menu-menu pada drawer serta membuat list item pada halaman `itemlist.dart`.

3. Pada `itemlist.dart` saya menerapkan filtering data yang dipunyai user saja dengan cara membuat sebuah fungsi pada `views.py` yang berfungsi untuk mengambil data dari database yang dipunyai user yang sedang login. Saya mengambil data nya dengan cara mengirimkan `request` dengan menggunakan `CookieRequest` yang disimpan pada saat login awal untuk mendapatkan session user yang sedang login. Setelah itu saya mengambil data dari `JSON` yang telah diubah menjadi `List` atau `Map` dengan method `.get()` yang disediakan oleh pub `pbp_auth`. Setelah itu saya membuat card untuk setiap item dan memunculkan setiap atribut dari model item itu.

4. Saya membuat halaman detail dengan nama `itemdetail.dart` yang berfungsi untuk menampilkan detail dari item yang dipilih. Saya membuat sebuah `ElevatedButton` untuk setiap card yang jika ditap maka akan pindah ke halaman detail setiap item tersebut. Pada `itemdetail.dart` saya juga menambahkan back button untuk kembali ke halaman utama.
<br>
<br>
<br>
<br>
<br>
<br>

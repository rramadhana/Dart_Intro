import 'dart:io';

int calculate() {
  return 6 * 7;
}

bool login(String? username, String? password) {
  String user_login = "admin";
  String password_login = "admin";
  var result =
      username == user_login && password == password_login ? true : false;
  return result;
}

void menu(String? username) {
  print('Hello $username');
  print('Menu');
  print('1. Kelompok Kami');
  print('2. Penjumlahan Angka');
  print('3. Pengurangan Angka');
  print('4. Keluar');
  print('Pilih menu : ');
  int? menu = int.parse(stdin.readLineSync()!);
  switch (menu) {
    case 1:
      dataKelompok();
      print('Kembali ke menu awal [y/n] : ');
      String? kembali = stdin.readLineSync();
      break;
    case 2:
      penjumlahan();
      break;
    case 3:
      pengurangan();
      break;
    case 4:
      print('Terima kasih telah menggunakan program ini');
      exit(0);
      break;
    default:
      print('Pilihan anda tidak ada di menu');
      break;
  }
}

void penjumlahan() {
  print('masukkan angka 1 : ');
  int? angka1 = int.parse(stdin.readLineSync()!);
  print('masukkan angka 2: ');
  int? angka2 = int.parse(stdin.readLineSync()!);
  int hasil = angka1 + angka2;
  print('Hasil penjumlahan $angka1 + $angka2 adalah : $hasil');
}

void pengurangan() {
  print('masukkan angka 1 : ');
  int? angka1 = int.parse(stdin.readLineSync()!);
  print('masukkan angka 2: ');
  int? angka2 = int.parse(stdin.readLineSync()!);
  int hasil = angka1 - angka2;
  print('Hasil pengurangan $angka1 - $angka2 adalah : $hasil');
}

void dataKelompok() {
  print('Kelompok Kami');
  print(' Fahmi Malik Namus Akbar - 123200002');
  print(' Giventheo Khemides - 123200063');
  print(' Raynicka Ramadhana - 123200150');
}

void main() {
  bool loggedIn = false;
  while (!loggedIn) {
    print('Silahkan login terlebih dahulu');
    print('Username : ');
    String? username = stdin.readLineSync();
    print('Password : ');
    String? password = stdin.readLineSync();
    loggedIn = login(username, password);
    if (!loggedIn) {
      print('Username atau password salah, silahkan coba lagi');
    } else {
      while (true) {
        menu(username);
      }
    }
  }
}

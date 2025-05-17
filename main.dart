import 'package:flutter/material.dart';

void main() {
  runApp(GeriSayimApp());
}

class GeriSayimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geri Sayım',
      themeMode: ThemeMode.system, // Sistem temasına göre çalışır
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.black)),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      ),
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).textTheme.bodyLarge?.color;

    return Scaffold(
      appBar: AppBar(
        title: Text('Geri Sayım'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => print("Arama tıklandı"),
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () => print("Filtre tıklandı"),
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => print("Paylaş tıklandı"),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AyarlarSayfasi()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "İçerik Alanı body",
          style: TextStyle(fontSize: 18, color: textColor),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SayacEklemeSayfasi()),
          );
        },
      ),
    );
  }
}

class AyarlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ayarlar')),
      body: Center(child: Text('Ayarlar Sayfası Body Alanı')),
    );
  }
}

class SayacEklemeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Yeni Sayaç Ekle")));
  }
}

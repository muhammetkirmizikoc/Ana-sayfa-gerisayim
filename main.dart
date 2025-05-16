import 'package:flutter/material.dart';

void main() {
  runApp(GeriSayimApp());
}

class GeriSayimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geri naber',
      theme: ThemeData.dark(),
      home: AnaSayfa(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Geri Sayım',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              print("Arama tıklandı");
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list, color: Colors.white),
            onPressed: () {
              print("Filtre tıklandı");
            },
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {
              print("Paylaş tıklandı");
            },
          ),
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
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
          "İçerik buraya gelecek",
          style: TextStyle(fontSize: 18, color: Colors.white),
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
// 
class SayacEklemeSayfasi extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Sayaç Ekle"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sayaç Adı:",
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Sayaç adını girin",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Bitiş Zamanı:",
                style: TextStyle(fontSize: 18),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Bitiş zamanını girin",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  print("Sayaç eklendi");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Sayaç Ekle"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

 
 
 
 
 class AyarlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ayar 1:",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SwitchListTile(
                title: Text("Ayar 1 Aktif", style: TextStyle(color: Colors.white)),
                value: true,
                onChanged: (bool value) {},
                activeColor: Colors.blue,
              ),
              SizedBox(height: 16),
              Text(
                "Ayar 2:",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SwitchListTile(
                title: Text("Ayar 2 Aktif", style: TextStyle(color: Colors.white)),
                value: false,
                onChanged: (bool value) {},
                activeColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "BlogApp",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bos uygulama cervecesi",
        ),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = 'Bloga hosgeldiniz';

  void martGoster() {
    setState(() {
      blogYazisi = 'martayusgqpıwuojopasawr';
    });
  }

  void nisanGoster() {
    setState(() {
      blogYazisi = 'amdsartaddfsdfyusgqpıwuojopasawr';
    });
  }

  void mayisGoster() {
    setState(() {
      blogYazisi = 'sssmartayusgqpıwuojopasawr';
    });
  }

  void haziranGoster() {
    setState(() {
      blogYazisi = 'gggmartayusgqpıwuojopasawr';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(blogYazisi),
            ElevatedButton(
              onPressed: martGoster,
              child: const Text(
                "Mart Yazısı",
              ),
            ),
            ElevatedButton(
              onPressed: nisanGoster,
              child: const Text(
                "Nisan Yazısı",
              ),
            ),
            ElevatedButton(
              onPressed: mayisGoster,
              child: const Text(
                "Mayıs Yazısı",
              ),
            ),
            ElevatedButton(
              onPressed: haziranGoster,
              child: const Text(
                "Haziran Yazısı",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

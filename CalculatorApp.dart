import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hesap Makinesi",
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
        title: const Text("Basit Hesap Makinesi"),
      ),
      body: const SingleChildScrollView(
        child: AnaEkran(),
      ),
    );
  }
}

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  // ignore: prefer_typing_uninitialized_variables
  var sayi1, sayi2, sonuc;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  sayiTopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Center(
        child: Column(
          children: [
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: sayiTopla,
              child: const Text("Topla"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: sayiCikar,
              child: const Text("Çıkar"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: sayiCarp,
              child: const Text("Çarp"),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: sayiBol,
              child: const Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}

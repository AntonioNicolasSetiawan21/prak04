import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Selamat Datang Cruise Indonesia';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'image/cruise.jpg',
              ),
              TitleSection(
                name: 'Selamat Datang Cruise Indonesia ',
                location: 'Jakarta, Indonesia',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Perusahaan ini berjanji untuk membuka 375 pelabuhan di seluruh dunia, mengunjungi 135 negara dan tujuh benua'
                    'Kapal ini akan menempuh jarak lebih dari 130.000 mil selama tiga tahun, '
                    'menikmati pemandangan ikonik mulai dari patung Kristus Penebus di Rio de Janeiro dan Taj Mahal di India'
                    'hingga Chichen Itza di Meksiko, piramida Giza, Machu Picchu, dan Tembok Besar Tiongkok. Ia bahkan melakukan perjalanan ke 103 “pulau tropis”. '
                    'Dari 375 pelabuhan tersebut, 208 diantaranya merupakan pemberhentian semalam,'
                    'sehingga memberikan Anda waktu tambahan di tempat tujuan. ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Colors.blue,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: Colors.blue,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: Colors.blue,
            icon: Icons.share,
            label: 'SHARE',
          ),
          ButtonWithText(
              color: Colors.blue, icon: Icons.calendar_month, label: 'Calender')
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

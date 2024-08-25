import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Drawer',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text(
          'RV Service Tech LLC.',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange[300],
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              // ignore: sort_child_properties_last
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Services',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ServicesPage()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Gallery',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GalleryPage()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Contact',
                style: TextStyle(color: Colors.black87, fontSize: 24),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Text(
              'Welcome to the website of',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              'RV Service Tech LLC.',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/images.jpeg',
              height: 150,
              width: 300,
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text(
          'About',
          style: TextStyle(color: Colors.black87, fontSize: 24),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 225,
            ),
            Text(
              "RV Service Tech LLC. can provide a wide range of services \n     to ensure your recreational vehicle is in top shape. \n          Wherever you park it (within my reach), \n                No matter the job needing done, \n          No matter the style or age of your camper.",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              " We are skilled in dealing with the unique needs of recreational\n vehicles, combining knowledge of automotive, electrical,\n plumbing, and home systems to keep your RV running smoothly.",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(color: Colors.black87, fontSize: 24),
        ),
      ),
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textAlign: TextAlign.left,
              '1. Routine Maintenance',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '2. Electrical System Repairs',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '3. Plumbing Repairs',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '4. HVAC Services',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '5. Appliance Repairs',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '6. Structural Repairs',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '7. Awning and Exterior Accessories',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '8. System Inspections',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '9. Customized Services',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              '10.Emergency Repairs',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderP extends StatefulWidget {
  const SliderP({super.key});

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'data:image/jpeg;base64,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',
    'data:image/jpeg;base64,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',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJlKbb67lu7DjtCHHZZZthg5yGvlxJKGvY2Q&s',
    'https://media.istockphoto.com/id/1478786153/photo/good-craftsman-can-fix-anything.webp?b=1&s=612x612&w=0&k=20&c=CB0XRasvCqZ85Smdwe1D2mUvkuBTvdO3SQAxC2sQwGo=',
    'https://plus.unsplash.com/premium_photo-1682086495376-ac5e9c345abd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHJ2JTIwcmVwYWlyc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://images.unsplash.com/photo-1586890662737-9f107825e147?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJ2JTIwcmVwYWlyc3xlbnwwfHwwfHx8MA%3D%3D',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAGNGyACM0DQzkCPqdqf_kqdhnp3MDXnR55g&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmDYiy0jBp_Huu99QSqfCWomvQhWGOclzC7w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToShWeIlMstSBj72SZ_GucZRCariOy2S-a6g&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 40, 40, 35),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
                carouselController: controller,
                itemCount: urlImages.length,
                itemBuilder: (context, index, realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
                options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index))),
            const SizedBox(height: 12),
            buildIndicator()
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: const ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: Colors.blue),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliderP();
    // Scaffold(
    //   backgroundColor: Colors.orange[300],
    //   appBar: AppBar(
    //     title: const Text(
    //       'Gallery',
    //       style: TextStyle(color: Colors.black87, fontSize: 24),
    //     ),
    //   ),
    //   body: const Center(
    //     child:
    //         Text('This is the Gallery page.', style: TextStyle(fontSize: 24)),
    //   ),
    // );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: AppBar(
        title: const Text(
          'Contact',
          style: TextStyle(color: Colors.black87, fontSize: 24),
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Text('Proprietor: Dennis Atiles',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Text('Phone Number: 573-528-1350', style: TextStyle(fontSize: 24)),
            SizedBox(
              height: 15,
            ),
            Text('Email: dennisatilesrvservicetech@gmail.com.',
                style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
CarouselController() {}

Widget buildImage(String urlImage, int index) =>
    Image.network(urlImage, fit: BoxFit.cover);

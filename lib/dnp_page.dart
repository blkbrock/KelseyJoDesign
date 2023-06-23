import 'package:flutter/material.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class DNPWorksPage extends StatefulWidget {
  const DNPWorksPage({super.key});

  @override
  State<DNPWorksPage> createState() => _DNPWorksPageState();
}

class _DNPWorksPageState extends State<DNPWorksPage> {
  _expandImage(String image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ivory,
          content: Container(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(Icons.close, color: green,))],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height * 2.5,
          decoration: BoxDecoration(
            color: green,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        },
                        child: Text(
                          'home',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactPage(),
                            ),
                          );
                        },
                        child: Text(
                          'contact',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.3,
                      child: Container(
                        height: screenSize.height * 0.05,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/kjd_logo.png'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AboutPage(),
                            ),
                          );
                        },
                        child: Text(
                          'about',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProjectsPage(),
                            ),
                          );
                        },
                        child: Text(
                          'projects',
                          style: kodchasan.copyWith(
                              color: orange, fontSize: screenSize.width * 0.02),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.05,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: screenSize.width * 0.02,
                    ),
                    Flexible(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  flex: 4,
                                  child: Text(
                                    'Do North Pizzeria & Pub\nSocial Media',
                                    style: kodchasan.copyWith(
                                        color: orange,
                                        fontSize: screenSize.width * 0.02,
                                        fontWeight: FontWeight.w700),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Spacer(flex: 2),
                                Flexible(
                                  flex: 10,
                                  child: Text(
                                    'Do North Pizzeria & Pub is a small, family owned business with two locations in\nNorthern Minnesota, Cloquet and Hermantown - PVA worked closely with the\nHermantown location. They were a brand new client that came to us in the early\nstages of my internship, looking for all of our services that PVA could provide. I\nwas responsible for social media management, monthly e-newsletters, branded\nmaterials and products, and much more. Do North Pizzeria & Pub - Hermantown\'s\ncontent creation was largely my responsibility, but the events and happenings\nthat popped up throughout my time with the company were prompted by the\nbusiness owner Briana Manning. All graphics created with the direction and\noversight of my supervisor  Melissa Saice, Art Director.',
                                    style: kodchasan.copyWith(
                                        color: ivory,
                                        fontSize: screenSize.width * 0.008),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Spacer(flex: 2),
                                Flexible(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: screenSize.width * 0.1,
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              screenSize.width * 0.001),
                                          decoration: BoxDecoration(
                                            color: ivory,
                                            borderRadius:
                                                BorderRadius.circular(
                                                    screenSize.width * 0.01),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.arrow_back_ios,
                                                color: orange,
                                              ),
                                              Text(
                                                'go back',
                                                style: kodchasan.copyWith(
                                                    color: green,
                                                    fontSize:
                                                        screenSize.width *
                                                            0.012),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 7,
                            child: Container(
                              alignment: Alignment.topCenter,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.centerLeft,
                                    image: AssetImage('assets/images/bg.png'),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 2,
                            child: Text(
                              'Do North Pizzeria & Pub Work Highlights',
                              style: kodchasan.copyWith(
                                  color: orange,
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenSize.width * 0.02),
                            ),
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp1.png',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp1.png',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp4.jpg',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp4.jpg',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp6.png',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp6.png',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp2.png',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp2.png',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp5.jpg',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp5.jpg',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Flexible(
                                        flex: 8,
                                        child: TextButton(
                                          onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp7.jpg',
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: grue,
                                            ),
                                            child: Center(
                                              child: Flexible(
                                                flex: 3,
                                                child: Image.asset(
                                                  'assets/images/dnp7.jpg',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp3.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 1,
                                          child: Image.asset(
                                            'assets/images/dnp3.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                              ],
                            ),
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp8.jpg',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp8.jpg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp9.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp9.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp10.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp10.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                              ],
                            ),
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp11.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp11.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp12.jpg',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp12.jpg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp13.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp13.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                              ],
                            ),
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp14.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp14.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp15.png',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp15.png',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                            _expandImage(
                                              'assets/images/dnp16.jpg',
                                            );
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Flexible(
                                          flex: 3,
                                          child: Image.asset(
                                            'assets/images/dnp16.jpg',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 1),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/in_icon.png',
                      ),
                      iconSize: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/ig_icon.png',
                      ),
                      iconSize: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/fb_icon.png',
                      ),
                      iconSize: screenSize.width * 0.05,
                    ),
                  ],
                ),
              ),
              Container(
                height: screenSize.height * 0.04,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kjd_logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.03,
                child: Text(
                  '© 2023 Kelsey Jo Design. All rights reserved.',
                  style: TextStyle(color: ivory, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          color: Color(0xff011317),
        ),
        child: Column(
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
                            color: Colors.white,
                            fontSize: screenSize.width * 0.02),
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
                            color: Colors.white,
                            fontSize: screenSize.width * 0.02),
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
                            color: const Color.fromARGB(255, 209, 129, 68),
                            fontSize: screenSize.width * 0.02),
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
                            color: Colors.white,
                            fontSize: screenSize.width * 0.02),
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
              height: screenSize.height * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: Column(
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 5,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      0, 0, 0, screenSize.width * 0.1),
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/kels_headshot.png'),
                                        fit: BoxFit.fitWidth),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 9,
                                child: Column(
                                  children: [
                                    Text('Hello, my name is Kelsey Gilles.',
                                        style: kodchasan.copyWith(
                                          color: orange,
                                          fontSize: screenSize.width * 0.015,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          screenSize.width * 0.01),
                                      child: Text(
                                          'I am a recent graduate from The University of Minnesota, Duluth with a BFA in Graphic Design and Marketing. for the last 2 years I have enjoyed working alongside independent creators and local small businesses and makers. I love working with people in my community because it allows for me to connect with people on a deeper level than just strictly professional. I pride myself on my ability to communicate effectively, and work with people and their businesses in a way that results in effective and impressive designs for their intended purposes.\nIn my personal life, I really enjoy learning about different facets of engineering and 3D design. My partner and I have collaborated on a variety of projects - recently RC cars, aquarium pumps, and personal desk fans - and are always coming up with more opportunities to learn how to engineer and optimize different projects for our intended purposes. Additionally, I am continuously fascinated by different species of animals and how to properly care for them. I get to enjoy taking care of mine and my partners 3 cats, 2 ferrets, and a naturalistic aquarium with a variety of aquatic species.',
                                          softWrap: true,
                                          style: kodchasan.copyWith(
                                            color: Colors.white,
                                            fontSize: screenSize.width * 0.008,
                                          ),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(flex: 1),
                            ],
                          ),
                        ),
                        Flexible(
                            child: Row(
                          children: [
                            const Spacer(flex: 1),
                            Flexible(
                              flex: 7,
                              child: Column(
                                children: [
                                  Text('Related work experience',
                                      style: kodchasan.copyWith(
                                        color: orange,
                                        fontSize: screenSize.width * 0.02,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.01),
                                    child: Text('',
                                        softWrap: true,
                                        style: kodchasan.copyWith(
                                          color: Colors.white,
                                          fontSize: screenSize.width * 0.01,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(flex: 1),
                            Flexible(
                              flex: 7,
                              child: Column(
                                children: [
                                  Text('Related work experience',
                                      style: kodchasan.copyWith(
                                        color: orange,
                                        fontSize: screenSize.width * 0.02,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.01),
                                    child: Text('',
                                        softWrap: true,
                                        style: kodchasan.copyWith(
                                          color: Colors.white,
                                          fontSize: screenSize.width * 0.01,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(flex: 1),
                            Flexible(
                              flex: 7,
                              child: Column(
                                children: [
                                  Text('Related work experience',
                                      style: kodchasan.copyWith(
                                        color: orange,
                                        fontSize: screenSize.width * 0.02,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.01),
                                    child: Text('',
                                        softWrap: true,
                                        style: kodchasan.copyWith(
                                          color: Colors.white,
                                          fontSize: screenSize.width * 0.01,
                                        ),
                                        textAlign: TextAlign.center),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.15,
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
              child: const Text(
                '© 2023 Kelsey Jo Design. All rights reserved.',
                style: TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

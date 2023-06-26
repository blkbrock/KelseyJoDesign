import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          color: green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                                color: orange, fontSize: screenSize.width * 0.02),
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
                      child: Text('contact',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                  SizedBox(
                    width: screenSize.width * 0.3,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        height: screenSize.height * 0.05,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/kjd_logo.png'),
                          ),
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
                      child: Text('about',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),),
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
                      child: Text('projects',
                          style: kodchasan.copyWith(
                              color: ivory, fontSize: screenSize.width * 0.02),),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                ],
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height * 0.65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProjectsPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: screenSize.width * 0.005, horizontal: screenSize.width * 0.02),
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(screenSize.width * 0.02),
                      ),
                      child: Text(
                        'my works',
                        style: kodchasan.copyWith(
                            color: ivory,
                            fontSize: screenSize.width * 0.025,
                            letterSpacing: screenSize.width * 0.001),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            SizedBox(
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
                )),
          ],
        ),
      ),
    );
  }
}

import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class PersonalWorksPage extends StatefulWidget {
  const PersonalWorksPage({super.key});

  @override
  State<PersonalWorksPage> createState() => _PersonalWorksPageState();
}

class _PersonalWorksPageState extends State<PersonalWorksPage> {
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
              height: screenSize.height * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage('assets/images/webp/bg.webp'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: grue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'apps & interactive\ndigital media',
                                      style: kodchasan.copyWith(
                                          color: orange,
                                          fontSize: screenSize.width * 0.02,
                                          fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: grue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'booklets &\nnewsletters',
                                      style: kodchasan.copyWith(
                                          color: orange,
                                          fontSize: screenSize.width * 0.02,
                                          fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
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
                            children: [
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: grue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'websites &\nprototypes',
                                      style: kodchasan.copyWith(
                                          color: orange,
                                          fontSize: screenSize.width * 0.02,
                                          fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(flex: 1),
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: grue,
                                  ),
                                  child: Center(
                                    child: Text(
                                      'branding &\npackaging',
                                      style: kodchasan.copyWith(
                                          color: orange,
                                          fontSize: screenSize.width * 0.02,
                                          fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
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
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(flex: 1),
                              SizedBox(
                                width: screenSize.width * 0.12,
                                child: Container(
                                  padding:
                                      EdgeInsets.all(screenSize.width * 0.005),
                                  decoration: BoxDecoration(
                                    color: ivory,
                                    borderRadius: BorderRadius.circular(
                                        screenSize.width * 0.01),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                            fontSize: screenSize.width * 0.02),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Spacer(flex: 5),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.centerRight,
                            image: AssetImage('assets/images/webp/bg.webp'),
                            fit: BoxFit.fitHeight),
                      ),
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
    );
  }
}

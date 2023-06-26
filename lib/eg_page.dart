import 'package:flutter/material.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class EGWorksPage extends StatefulWidget {
  const EGWorksPage({super.key});

  @override
  State<EGWorksPage> createState() => _EGWorksPageState();
}

class _EGWorksPageState extends State<EGWorksPage> {
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
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: green,
                    ))
              ],
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
          height: screenSize.height * 2,
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
                height: screenSize.height * 1.5,
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
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    child: Text(
                                      'Erbert & Gerbert\'s\nSocial Media',
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
                                      'For Erbert & Gerbert\'s, we created supplemental or local-specific content for all\nErbert & Gerbert\'s locations in St. Louis County. Due to being a large national\ncompany, brand standards were strict, but encouraged creativity and freedom to\ncreate content we thought was important for Erbert & Gerbert\'s to promote on\ntheir social media. Erbert & Gerbert\'s content creation was largely my\nresponsibility, but the events and happenings that popped up throughout my\ntime with the company were prompted by the business owner Briana Manning. All\ngraphics created with the direction and oversight of my supervisor Melissa\nSaice, Art Director.',
                                      style: kodchasan.copyWith(
                                          color: ivory,
                                          fontSize: screenSize.width * 0.008),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Spacer(flex: 1),
                                  SizedBox(
                                    height: screenSize.height * 0.04,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: screenSize.width * 0.1,
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 7,
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    alignment: Alignment.bottomLeft,
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
                              'Erbert & Gerbert\'s Work Highlights',
                              style: kodchasan.copyWith(
                                  color: orange,
                                  fontWeight: FontWeight.w700,
                                  fontSize: screenSize.width * 0.02),
                            ),
                          ),
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 17,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/eg1.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg1.png',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg2.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg2.png',
                                          fit: BoxFit.fitHeight,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/eg3.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg3.jpg',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg4.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg4.jpg',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg5.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg5.jpg',
                                          fit: BoxFit.fitHeight,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/eg6.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg6.jpg',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg7.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg7.png',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg8.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg8.jpg',
                                          fit: BoxFit.fitHeight,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/eg9.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg9.png',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg10.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg10.png',
                                          fit: BoxFit.fitHeight,
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
                                        'assets/images/eg11.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/eg11.png',
                                          fit: BoxFit.fitHeight,
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

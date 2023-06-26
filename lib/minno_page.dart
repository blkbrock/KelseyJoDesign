import 'package:flutter/material.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/contact_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/styles.dart';

class MinnoWorksPage extends StatefulWidget {
  const MinnoWorksPage({super.key});

  @override
  State<MinnoWorksPage> createState() => _MinnoWorksPageState();
}

class _MinnoWorksPageState extends State<MinnoWorksPage> {
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
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Flexible(
                                    flex: 5,
                                    child: Text(
                                      'Minno-ette &\nMinno-ette Liquor\nSocial Media',
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
                                      'The Minno-ette and Minno-ette Liquor are a joint convenience store run by my\nboss and owner of PVA Briana Manning and Jason Manning, host of the KQDS FM\nMorning Show. They are essentially a one-stop shop for gas, snacks, food, and\ndrinks, bait, and alcohol. They are primarily seen as the same business, but all\ncontent relating to alcohol is specific to Minno-ette Liquor, but otherwise all\ncurrent events and happenings were posted on both social media accounts with\ntheir own branding. Additionally, I had the opportunity to work on the Fishing\nOpener Campaign for The Minno-ette, so for the majority of late April and early\nMay I created many more social graphics, banners, merchandise, and more for\nFishing opener on May 13th. The Minno-ette and Minno-ette Liquor content\ncreation was largely my responsibility, but the events and happenings that\npopped up throughout my time with the company were prompted by the\nbusiness owner Briana Manning. All graphics created with the direction and\noversight of my supervisor Melissa Saice, Art Director.',
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
                              'Minno-ette Work Highlights',
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
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/minno1.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno1.jpg',
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
                                        'assets/images/minno2.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno2.png',
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
                                        'assets/images/minno3.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno3.png',
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
                                        'assets/images/minno4.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno4.png',
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
                                        'assets/images/minno5.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno5.png',
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
                                        'assets/images/minno6.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno6.png',
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
                                        'assets/images/minno7.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno7.png',
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
                                        'assets/images/minno8.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno8.png',
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
                                        'assets/images/minno9.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno9.jpg',
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
                                        'assets/images/minno10.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno10.jpg',
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
                                        'assets/images/minno11.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno11.jpg',
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
                                        'assets/images/minno12.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno12.jpg',
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
                            flex: 2,
                            child: Text(
                              'Minno-ette Liquor Work Highlights',
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
                                  flex: 8,
                                  child: TextButton(
                                    onPressed: () {
                                      _expandImage(
                                        'assets/images/minno13.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno13.png',
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
                                        'assets/images/minno14.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno14.jpg',
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
                                        'assets/images/minno15.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno15.png',
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
                                        'assets/images/minno16.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno16.jpg',
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
                                        'assets/images/minno17.jpg',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno17.jpg',
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
                                        'assets/images/minno18.png',
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: grue,
                                      ),
                                      child: Center(
                                        child: Image.asset(
                                          'assets/images/minno18.png',
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

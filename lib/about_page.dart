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
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height*1.2,
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
                              color: ivory,
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
                              color: ivory,
                              fontSize: screenSize.width * 0.02),
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
                              color: orange,
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
                              color: ivory,
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
                height: screenSize.height * 0.9,
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
                              image: AssetImage('assets/images/bg.png'),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 8,
                      child: Column(
                        children: [
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        flex: 8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                  color: ivory,
                                                  width: 2.0,
                                                ),
                                                top: BorderSide(
                                                  color: ivory,
                                                  width: 2.0,
                                                ),
                                                left: BorderSide(
                                                  color: ivory,
                                                  width: 2.0,
                                                ),
                                                right: BorderSide(
                                                  color: ivory,
                                                  width: 2.0,
                                                )),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/kels_headshot.png'),
                                                fit: BoxFit.fitWidth),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                       Flexible(
                                        flex: 2,
                                        child: Container(
                                          width: screenSize.width * 0.1,
                                          decoration: BoxDecoration(
                                            color: ivory,
                                            borderRadius: BorderRadius.circular(
                                                screenSize.width * 0.01),
                                          ),
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'my resume',
                                              style: kodchasan.copyWith(
                                                color: green,
                                                fontSize:
                                                    screenSize.width * 0.015,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Spacer(flex: 1),
                                      Flexible(
                                        flex: 2,
                                        child: Text('education',
                                            style: kodchasan.copyWith(
                                              color: orange,
                                              fontSize: screenSize.width * 0.015,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      SizedBox(height: screenSize.height * 0.03),
                                      Flexible(
                                        child: Text(
                                            'BFA Graphic Design & Marketing',
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Flexible(
                                        child: Text(
                                            'University of Minnesota, Duluth',
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Flexible(
                                        child: Text('Fall 2018 - Summer 2022',
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 9,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text('Hello, my name is Kelsey Gilles.',
                                          style: kodchasan.copyWith(
                                            color: orange,
                                            fontSize: screenSize.width * 0.018,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center),
                                          SizedBox(height: screenSize.height * 0.03),
                                      Padding(
                                        padding: EdgeInsets.all(
                                            screenSize.width * 0.005),
                                        child: Text(
                                            'I am a recent graduate from The University of Minnesota, Duluth with a BFA in Graphic Design and Marketing. for the last 2 years I have enjoyed working alongside independent creators and local small businesses and makers. I love working with people in my community because it allows for me to connect with people on a deeper level than just strictly professional. I pride myself on my ability to communicate effectively, and work with people and their businesses in a way that results in effective and impressive designs for their intended purposes.\n\nIn my personal life, I really enjoy learning about different facets of engineering and 3D design. My partner and I have collaborated on a variety of projects - recently RC cars, aquarium pumps, and personal desk fans - and are always coming up with more opportunities to learn how to engineer and optimize different projects for our intended purposes. Additionally, I am continuously fascinated by different species of animals and how to properly care for them. I get to enjoy taking care of mine and my partners 3 cats, 2 ferrets, and a naturalistic aquarium with a variety of aquatic species.',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
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
                          const Spacer(flex: 1),
                          Flexible(
                            flex: 8,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 10,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          0,
                                          0,
                                          screenSize.width * 0.01,
                                        ),
                                        child: Text('previous clients',
                                            style: kodchasan.copyWith(
                                              color: orange,
                                              fontSize: screenSize.width * 0.015,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            '\'Queerly, Me\', Corey Reilly\nPodcast Cover Art\nOctober 2022 - \nNovember 2022',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            'Josie\'s Gemstones\nJanuary 2022 - April 2022\nCommission based social media content revamp',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 10,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          0,
                                          0,
                                          screenSize.width * 0.01,
                                        ),
                                        child: Text('related work experience',
                                            style: kodchasan.copyWith(
                                              color: orange,
                                              fontSize: screenSize.width * 0.015,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            'Pearson & Von Elbe Advertising\nDigital Social Media Intern\nApril 2023 - June 2023',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            'Tweed Museum of Art\nStudent Graphic Designer\nApril 2021 - June 2022',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(flex: 1),
                                Flexible(
                                  flex: 10,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(
                                          0,
                                          0,
                                          0,
                                          screenSize.width * 0.01,
                                        ),
                                        child: Text('other work experience',
                                            style: kodchasan.copyWith(
                                              color: orange,
                                              fontSize: screenSize.width * 0.015,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            'Petco\nGuest Advisor\nJune 2022 - April 2023',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: screenSize.width * 0.01,
                                            vertical: screenSize.width * 0.005),
                                        child: Text(
                                            'The Home Depot\nSales Associate\nMarch 2017 - June 2022',
                                            softWrap: true,
                                            style: kodchasan.copyWith(
                                              color: ivory,
                                              fontSize: screenSize.width * 0.008,
                                            ),
                                            textAlign: TextAlign.center),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.centerRight,
                            image: AssetImage('assets/images/bg.png'),
                            fit: BoxFit.fitHeight,
                          ),
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
                height: screenSize.height * 0.03,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/kjd_logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              SizedBox(
                height: screenSize.height * 0.02,
                child: Text(
                  '© 2023 Kelsey Jo Design. All rights reserved.',
                  style: TextStyle(
                      color: ivory, fontSize: screenSize.width * 0.006),
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

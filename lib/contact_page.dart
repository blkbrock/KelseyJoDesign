// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kelsey_website/about_page.dart';
import 'package:kelsey_website/home_page.dart';
import 'package:kelsey_website/projects_page.dart';
import 'package:kelsey_website/route.dart';
import 'package:kelsey_website/styles.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference contact =
      FirebaseFirestore.instance.collection('Contacts');
  String name = '', email = '', message = '';

  // function to sendMessage to firestore
  Future<void> sendMessage() {
    return contact.add({
      'name': name,
      'email': email,
      'message': message,
    }).then((value) {
      print('Message sent');
      _sent();
    }).catchError((error) => print('Failed to send message: $error'));
  }

  _sent() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ivory,
          alignment: Alignment.center,
          actionsAlignment: MainAxisAlignment.center,
          title: Text(
            'Message Sent',
            style: TextStyle(
                color: orange,
                fontFamily: 'Kodchasan',
                fontSize: 20.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          content: Text(
            'Thank you for your message!',
            style: TextStyle(
                color: green,
                fontFamily: 'Kodchasan',
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                    color: orange,
                    fontFamily: 'Kodchasan',
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
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
          height: screenSize.height * 1.5,
          decoration: BoxDecoration(
            color: green,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                              color: const Color.fromARGB(255, 209, 129, 68),
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
                              color: ivory, fontSize: screenSize.width * 0.02),
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
                height: screenSize.height * 1.05,
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
                              alignment: Alignment.centerLeft,
                              image: AssetImage('assets/images/webp/bg.webp'),
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const Spacer(),
                          Flexible(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(
                                    screenSize.width * 0.05),
                              ),
                              child: Text(
                                'connect with me',
                                style: kodchasan.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: orange,
                                    fontSize: screenSize.width * 0.03),
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.05),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenSize.width * 0.05),
                                decoration: BoxDecoration(
                                  color: grue,
                                  borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.05),
                                ),
                                child: TextField(
                                  onChanged: (value) => name = value,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'name',
                                    hintStyle: kodchasan.copyWith(
                                        color: ivory,
                                        fontSize: screenSize.width * 0.02),
                                  ),
                                  style: kodchasan.copyWith(
                                      color: ivory,
                                      fontSize: screenSize.width * 0.02),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.05),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenSize.width * 0.05),
                                decoration: BoxDecoration(
                                  color: grue,
                                  borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.05),
                                ),
                                child: TextField(
                                  onChanged: (value) => email = value,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'email',
                                    hintStyle: kodchasan.copyWith(
                                        color: ivory,
                                        fontSize: screenSize.width * 0.02),
                                  ),
                                  style: kodchasan.copyWith(
                                      color: ivory,
                                      fontSize: screenSize.width * 0.02),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Flexible(
                            flex: 6,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.05),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenSize.width * 0.05),
                                decoration: BoxDecoration(
                                  color: grue,
                                  borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.02),
                                ),
                                child: TextField(
                                  onChanged: (value) => message = value,
                                  maxLines: 6,
                                  minLines: 6,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'message',
                                    hintStyle: kodchasan.copyWith(
                                        color: ivory,
                                        fontSize: screenSize.width * 0.02),
                                  ),
                                  style: kodchasan.copyWith(
                                      color: ivory,
                                      fontSize: screenSize.width * 0.02),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          Flexible(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenSize.width * 0.15),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ivory,
                                  borderRadius: BorderRadius.circular(
                                      screenSize.width * 0.05),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    if (name != '' &&
                                        email != '' &&
                                        message != '') {
                                      sendMessage();
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'send',
                                        style: kodchasan.copyWith(
                                            color: green,
                                            fontSize: screenSize.width * 0.03),
                                      ),
                                      SizedBox(
                                        width: screenSize.width * 0.01,
                                      ),
                                      Icon(
                                        FontAwesomeIcons.chevronRight,
                                        color: orange,
                                        size: screenSize.width * 0.03,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
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
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        launchIN();
                      },
                      icon: Image.asset(
                        'assets/images/in_icon.png',
                      ),
                      iconSize: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {
                        launchIG();
                      },
                      icon: Image.asset(
                        'assets/images/ig_icon.png',
                      ),
                      iconSize: screenSize.width * 0.05,
                    ),
                    SizedBox(
                      width: screenSize.width * 0.1,
                    ),
                    IconButton(
                      onPressed: () {
                        launchFB();
                      },
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
                  '© 2023 Kelsey Jo Design.  All rights reserved.',
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

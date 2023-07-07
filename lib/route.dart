import 'package:url_launcher/url_launcher.dart';

final Uri _kelseyJoDesign = Uri(
  scheme: 'https',
  host: 'kelseyjodesigns.com',
  path: '/projects',
);
final Uri _kels_in = Uri(
  scheme: 'https',
  host: 'www.linkedin.com',
  path: '/in/kelseygilles',
);
final Uri _kels_ig = Uri(
  scheme: 'http',
  host: 'instagram.com',
  path: '/kelseyjo_design',
);
final Uri _kels_fb = Uri(
  scheme: 'http',
  host: 'www.facebook.com',
  path: '/kelseygilles9',
);

Future<void> launchKJD() async {
  launchUrl(_kelseyJoDesign);
}

Future<void> launchIN() async {
  launchUrl(_kels_in);
}

Future<void> launchIG() async {
  launchUrl(_kels_ig);
}

Future<void> launchFB() async {
  launchUrl(_kels_fb);
}

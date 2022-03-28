// @dart=2.9
import 'package:flutter/material.dart';
import 'package:my_potforlio/screens/home_page/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// const String _url = 'https://flutter.dev';

// void main() => runApp(
//       const MaterialApp(
//         home: Material(
//           child: Center(
//             child: RaisedButton(
//               onPressed: _launchURL,
//               child: Text('Show Flutter homepage'),
//             ),
//           ),
//         ),
//       ),
//     );

// void _launchURL() async {
//   if (!await launch(_url)) throw 'Could not launch $_url';
// }

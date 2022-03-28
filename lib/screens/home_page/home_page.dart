import 'package:flutter/material.dart';
import '../../componets/footer.dart';
import 'componets/landing_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      color: const Color.fromRGBO(10, 5, 10, 1),
      child: Column(
        children: [const LandingPage(), _BlueLine(context), Footer()],
      ),
    );
  }
}

Widget _BlueLine(BuildContext context) {
  return Container(
    height: 2,
    width: MediaQuery.of(context).size.width,
    color: Colors.blueAccent,
    child: null,
  );
}

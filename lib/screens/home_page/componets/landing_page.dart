import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contact_me.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constaints) {
      if (constaints.maxWidth < 800) {
        return Container(
          constraints: BoxConstraints.expand(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.85,
          ),
          child: const UserInfo(),
        );
      } else {
        return Container(
          constraints: BoxConstraints.expand(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.85,
          ),
          child: Row(
            children: const [
              UserInfo(),
              UserBackground(),
            ],
          ),
        );
      }
    });
  }
}

class UserBackground extends StatelessWidget {
  const UserBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      // Image
      child: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.blueGrey,
        child: backgroundPicture(),
      ),
    );
  }
}

Widget backgroundPicture() {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("img/user_image.png"),
        fit: BoxFit.cover,
      ),
    ),
    child: null,
  );
}

class UserInfo extends StatelessWidget {
  // const UserInfo({Key? key}) : super(key: key);
  final nameTextStyle = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  final roleTextStyle = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white);

  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/user_info_background.png"),
              fit: BoxFit.cover,
              opacity: 0.9,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "       Unathi,\nNemutanzhela",
                style: GoogleFonts.fredokaOne(
                    fontSize: 54,
                    fontWeight: FontWeight.w300,
                    color: Color.fromARGB(255, 211, 211, 211)),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "| Junior Software Developer | ",
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Color.fromARGB(255, 211, 211, 211),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              ContactMeButton(),
            ],
          ),
        ));
  }
}

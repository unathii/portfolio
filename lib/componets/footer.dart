import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      constraints: BoxConstraints.expand(width: 600),
      child: _footerIcons(),
    ));
  }
}

Widget _footerIcons() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          onPressed: () async {
            if (await canLaunch("https://github.com/unnemuta")) {
              await launch("https://github.com/unnemuta");
            }
          },
          child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/github.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null),
        ),
        MaterialButton(
          onPressed: () async {
            if (await canLaunch("https://linkedin.com/in/unnemuta")) {
              await launch("https://linkedin.com/in/unnemuta");
            }
          },
          child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/linkedin.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null),
        ),
        MaterialButton(
          padding: EdgeInsets.all(8.0),
          onPressed: () async {
            if (await canLaunch(
                "https://discordapp.com/users/chuckfini#4260")) {
              await launch("https://discordapp.com/users/chuckfini#4260");
            }
          },
          child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/discord.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: null),
        ),
      ],
    ),
  );
}

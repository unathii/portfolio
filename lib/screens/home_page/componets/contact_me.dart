import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMeButton extends StatefulWidget {
  const ContactMeButton({Key? key}) : super(key: key);

  @override
  State<ContactMeButton> createState() => _ContactMeButtonState();
}

class _ContactMeButtonState extends State<ContactMeButton> {
  void contactPopup(BuildContext context) => Flushbar(
        icon: Icon(Icons.contact_mail),
        titleText: Text(
          "Contact Details:",
          style: GoogleFonts.fredokaOne(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(255, 255, 255, 255)),
        ),
        messageText: Text(
          "Email:  unnemuta@student.wethinkcode.co.za\nCall: (+27)79 925 5977",
          style: GoogleFonts.roboto(
              wordSpacing: 5,
              fontSize: 15,
              color: Color.fromARGB(255, 211, 211, 211),
              fontWeight: FontWeight.bold),
        ),
        duration: const Duration(seconds: 9),
        padding: EdgeInsets.all(21),
        maxWidth: 420,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Color.fromRGBO(30, 33, 88, 1),
      ).show(context);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (builderContext) {
      return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        onPressed: () {
          contactPopup(context);
        },
        color: const Color.fromRGBO(30, 33, 88, 1),
        elevation: 20,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18.0))),
        hoverColor: const Color.fromRGBO(114, 137, 218, 1),
        child: const Text(
          "Contact Me",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    });
  }
}

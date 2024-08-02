import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wondertales/Views/Authentication.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
     body: Stack(
  children: [
    Container(
      height: size.height * 3,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(
        'assets/doll.png',
        fit: BoxFit.cover,
      ),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: size.height * 0.40,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/tales.png',
                scale: 5,
              ),
              SizedBox(height: 20), 
              Text(
                'Where Your Dreams Becomes Stories!',
                style: GoogleFonts.schoolbell(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
)
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: authentication(),
  ));
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}
class _FavouriteScreenState extends State<FavouriteScreen> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, ',
                    style: TextStyle(
                      color: Color(0xff1E1E1E),
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Huzaifa',
                    style: GoogleFonts.schoolbell(
                      color: Color(0xff1E1E1E),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 160),
                  Image.asset('assets/upgrade.png', scale: 5),
                  SizedBox(width: 5),
                  Image.asset('assets/notification.png', scale: 5),
                  SizedBox(width: 5),
                  Image.asset('assets/panda2.png', scale: 5),
                ],
              ),
              Image.asset('assets/leftArrow.png', scale: 5.8),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Favourite',
                      style: GoogleFonts.schoolbell(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                 Column(
                children: List.generate(7, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 30),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: size.height * 0.15,
                          width: size.width * 0.94,
                          decoration: BoxDecoration(
                            color: Color(0xffFBDFB6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 175, top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Travel with friends',
                                  style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff21262E),
                                  ),
                                ),
                                Text(
                                  'Travel',
                                  style: GoogleFonts.schoolbell(
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Huzaifa Shah',
                                  style: GoogleFonts.schoolbell(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: -size.height * 0.14,
                          left: size.width * 0.05,
                          child: Image.asset(
                            'assets/image3.png',
                            height: size.height * 0.35,
                            width: size.width * 0.35,
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.00,
                          right: size.height * 0.01,
                          bottom: size.height * 0.08,
                          child: Image.asset(
                            'assets/favorite.png',
                            height: size.height * 0.08,
                            width: size.width * 0.08,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
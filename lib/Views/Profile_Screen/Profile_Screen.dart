import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/Image (2).png',
                    scale: 3.6,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 15,
                  child: Image.asset(
                    'assets/left-arrow 2.png',
                    scale: 5,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                          color: Color(0xffFAD271),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Upgrade',
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Image.asset(
                                  'assets/thunder 1.png',
                                  scale: 4.5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        '200000',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color(0xffFAD271),
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width * 0.3,
                          child: TextField(
                            cursorColor: Color(0xffFAD271),
                            cursorWidth: 3,
                            decoration: InputDecoration(
                              hintText: 'Huzaifa Shah',
                              hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff21262E),
                              ),
                              border: InputBorder.none,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffFAD271), width: 3),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffFAD271), width: 3),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: size.height * 0.04,
                          width: size.height * 0.04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFAD271),
                          ),
                          child: Image.asset(
                            'assets/check.png',
                            scale: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.90,
                        decoration: BoxDecoration(
                          color: Color(0xffFAD271),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/payment 1.png',
                              scale: 4,
                            ),
                            Text(
                              'Save Payment Methods',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Image.asset(
                              'assets/right-arrow.png',
                              scale: 3.5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: size.height * 0.08,
                        width: size.width * 0.90,
                        decoration: BoxDecoration(
                          color: Color(0xffFAD271),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                'assets/chat 1.png',
                                scale: 4,
                              ),
                              SizedBox(width: 30),
                              Text(
                                'Help Center',
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 18),
                                child: Image.asset(
                                  'assets/right-arrow.png',
                                  scale: 3.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      GestureDetector(
                        onVerticalDragUpdate: (details) {
                          if (details.primaryDelta! < -10) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NextScreen(),
                              ),
                            );
                          }
                        },
                        child: Center(
                          child: Image.asset(
                            'assets/up-arrow 1.png',
                            scale: 1.7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFAD271),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/left-arrow 2.png',
                    scale: 5,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/down-arrow.png',
                      scale: 6,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: size.height * 0.85,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(70),
                  topLeft: Radius.circular(70),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipOval(
                        child: Container(
                           height: size.height * 0.35,
                           width: size.width * 0.60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Image (2).png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
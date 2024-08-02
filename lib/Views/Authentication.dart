import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class authentication extends StatefulWidget {
  const authentication({Key? key}) : super(key: key);

  @override
  State<authentication> createState() => _authenticationState();
}

class _authenticationState extends State<authentication> {

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
          Image.asset('assets/image.png',),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: size.height * 0.50),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Welcome to the land of imaginations!',
                          style: GoogleFonts.schoolbell(fontSize: 16),
                        ),
                        SizedBox(height: 20),
                        Image.asset(
                          'assets/tales.png',
                          scale: 5,
                        ),
                        SizedBox(height: 20),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffFDEED8),
                                shape: BoxShape.circle,
                                border: Border.all(color: Color(0xffFAD271)),
                              ),
                              child: Center(
                                child: Image.asset(
                                  'assets/panda.png',
                                  scale: 4,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFAD271),
                                ),
                                child: Image.asset(
                                  'assets/camera.png',
                                  scale: 4,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: Text(
                              'Name',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffFAD271), width: 2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only( left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Huzaifa Shah',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff75818D),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 50,
                          width: size.width * 0.85,
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFAD271),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 12),
                            ),
                            child: Text(
                              'Yayyyyyy!',
                              style: TextStyle(
                                color: Color(0xffFCFCFC),
                                fontSize: 16,
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
        ],
      ),
    );
  }
}

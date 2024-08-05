import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class upgrade_Package extends StatefulWidget {
  const upgrade_Package({super.key});

  @override
  State<upgrade_Package> createState() => _upgrade_PackageState();
}
class _upgrade_PackageState extends State<upgrade_Package> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Image.asset('assets/leftArrow.png', scale: 5.8),
                
                  Image.asset('assets/panda2.png', scale: 5),
                ],
              ),
            ),
 SingleChildScrollView(
  scrollDirection: Axis.horizontal,
   child: Padding(
    padding: const EdgeInsets.only(left: 20, top: 15, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [Color(0xffFAD271), Color(0xffFBDFB6)], 
                  begin: Alignment.centerLeft, 
                  end: Alignment.centerRight, 
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Magical\nStorytime\nPass',
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '\$0/month',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          SizedBox(width: 25),
        Container(
          height: size.height * 0.35,
          width: size.width * 0.55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Color(0xffFBDFB6), Color(0xffFAD271)], 
              begin: Alignment.centerLeft, 
              end: Alignment.centerRight, 
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fantasy\nExplore\nPackage',
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '\$8/month',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
     ),
    ],
  ),
 ),
),
      SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Includes',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8CFA71),
                    ),
                    child: Image.asset('assets/check.png',
                    scale: 4,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('5 Story Generations',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8CFA71),
                    ),
                    child: Image.asset('assets/check.png',
                    scale: 4,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('1 Story Image',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                 ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff8CFA71),
                    ),
                    child: Image.asset('assets/check.png',
                    scale: 4,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('1 Story Paragraph',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFA7171),
                    ),
                    child: Image.asset('assets/cross.png',
                    scale: 4,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('Audio Book',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                 ),
               ],
              ),
                Row(
                 children: [
                  Container(
                    height: size.height * 0.07,
                    width: size.width * 0.07,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFA7171),
                    ),
                    child: Image.asset('assets/cross.png',
                    scale: 4,
                    ),
                  ),
                  SizedBox(width: 15),
                  Text('Story Publishing',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
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
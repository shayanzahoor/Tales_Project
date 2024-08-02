import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Color> colors = [
    Color(0xffFBDFB6),
    Color(0xffCCFBB6),
    Color(0xffB6C5FB),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF6E9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hello, ',
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Huzaifa',
                      style: GoogleFonts.schoolbell(
                        color: Color(0xff1E1E1E),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 180),
                    Image.asset(
                      'assets/upgrade.png',
                      scale: 5,
                    ),
                    Image.asset(
                      'assets/notification.png',
                      scale: 5,
                    ),
                    Image.asset(
                      'assets/panda2.png',
                      scale: 5,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  child: Image.asset('assets/image2.png',
                  height: size.height * 0.40,
                  width: size.width * 0.93,
                  fit: BoxFit.cover,
                  ),
                  ),
               SizedBox(height: 15),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         'Continue Reading',
                         style: GoogleFonts.poppins(
                           color: Color(0xff21262E),
                           fontSize: 16,
                           fontWeight: FontWeight.w500,
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(right: 15),
                         child: Container(
                           height: 35,
                           width: 35,
                           decoration: BoxDecoration(
                             color: Color(0xffFAD271),
                             shape: BoxShape.circle,
                           ),
                           child: Icon(
                             Icons.keyboard_arrow_right_outlined,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ],
                   ),
 SizedBox(height: 30),
 Container(
  height: size.height * 0.24,  
  child: ListView.builder(
    clipBehavior: Clip.none,
    itemCount: colors.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 0.28,
              width: size.width * 0.40,
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Travel',
                      style: GoogleFonts.schoolbell(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Travel with\n'
                      '    friends',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff21262E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -size.height * 0.04,
            left: size.width * 0.07,
            child: Image.asset(
              'assets/image3.png',
              height: 120,
              width: 120,
            ),
          ),
        ],
      );
    },
  ),
),

Padding(
  padding: const EdgeInsets.only(left: 30, top: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Text(
            "For you",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Color(0xffFAD271),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
     SizedBox(width: 10),
      Column(
        children: [
          StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Stack(
           clipBehavior: Clip.none,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: size.height * 0.25,
                 width: size.width * 0.40,
                 decoration: BoxDecoration(
                  color: Color(0xffCCFBB6),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 10),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text(
                         'Travel',
                         style: GoogleFonts.schoolbell(
                           fontSize: 14,
                         ),
                       ),
                       Text(
                         'Travel with\n'
                         'friends and\n'
                         '     Family',
                         style: GoogleFonts.poppins(
                           fontSize: 15,
                           fontWeight: FontWeight.w500,
                           color: Color(0xff21262E),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             ),
             Positioned(
               top: -size.height * 0.04,
               left: size.width * 0.07,
               child: Image.asset(
                 'assets/image3.png',
                 height: 120,
                 width: 120,
               ),
             ),
           ],
                 ),
            ),
            StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 5,
            child: Stack(
             clipBehavior: Clip.none,
             children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
           height: size.height * 0.25,
           width: size.width * 0.40,
           decoration: BoxDecoration(
            color: Color(0xffCCFBB6),
             borderRadius: BorderRadius.circular(20),
           ),
           child: Padding(
             padding: const EdgeInsets.only(bottom: 10),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text(
                   'Travel',
                   style: GoogleFonts.schoolbell(
                     fontSize: 14,
                   ),
                 ),
                 Text(
                   'Travel with\n'
                   'friends and\n'
                   '     Family',
                   style: GoogleFonts.poppins(
                     fontSize: 15,
                     fontWeight: FontWeight.w500,
                     color: Color(0xff21262E),
                   ),
                 ),
               ],
             ),
           ),
         ),
       ),
       Positioned(
         top: -size.height * 0.04,
         left: size.width * 0.07,
         child: Image.asset(
           'assets/image3.png',
           height: 120,
           width: 120,
         ),
       ),
             ],
           ),
      ),
        ],
      ),
           
      
    ],
  ),
),
              ],
            ),
              ],
            ),
            ),
                ),
              
            ),
          );
  }
}
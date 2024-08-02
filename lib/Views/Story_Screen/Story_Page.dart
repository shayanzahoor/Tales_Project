import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';



class Story_Page extends StatefulWidget {
  const Story_Page({super.key});

  @override
  State<Story_Page> createState() => _Story_PageState();
}

class _Story_PageState extends State<Story_Page> {

  final Set<int> selectedTags = {};
  final List<String> tags = [
    'Adventure', 'Fantasy', 'Mystery', 'Sci-Fi', 'Fairy Tale',
    'Superheroes', 'Animal\nAdventures', 'Time Travel',
  ];




  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF6E9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
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
                    SizedBox(width: 140),
                    Image.asset('assets/upgrade (2).png', scale: 5),
                    SizedBox(width: 5),
                    Image.asset('assets/notification.png', scale: 5),
                    SizedBox(width: 5),
                    Image.asset('assets/panda2.png', scale: 5),
                  ],
                ),
                Image.asset('assets/leftArrow.png', scale: 6),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/picture.png',
                      width: size.width * 0.94,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    Text('Choose Genres',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(height: 10),
                     Wrap(
        spacing: 8.0,
        runSpacing: 9.0,
        children: [
          ...List<Widget>.generate(tags.length, (int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedTags.contains(index)) {
                    selectedTags.remove(index);
                  } else {
                    selectedTags.add(index);
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  color: selectedTags.contains(index)
                      ? Color(0xffFAD271)
                      : Colors.white30,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xffFAD271), width: 3),
                ),
                child: Text(
                  tags[index],
                  style: TextStyle(
                    color: selectedTags.contains(index)
                        ? Colors.white
                        : Colors.black45,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            );
          }),
          Image.asset('assets/downArrow.png',
          scale: 4,
          ),
        ],
            ),
            SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset('assets/tales.png',
                scale: 6,
                fit: BoxFit.cover,
                ),
              ],
            ),
               SizedBox(height: 50),
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
                          color: Color(0xffFBDFB6),
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
                    )],
            ),
              ],
            ),
            ),
            ),
      ),
    );
  }
}
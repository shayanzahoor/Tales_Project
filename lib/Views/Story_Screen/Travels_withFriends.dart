import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Travels_withFriends extends StatefulWidget {
  const Travels_withFriends({super.key});

  @override
  State<Travels_withFriends> createState() => _Travels_withFriendsState();
}

class _Travels_withFriendsState extends State<Travels_withFriends> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.51,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xffFDEED8),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/leftArrow.png',
                    scale: 5,
                    ),
                    Column(
                      children: [
                        Center(
                          child: Image.asset('assets/image3.png',
                          scale: 3,
                          ),
                        ),
                        Text('Travel with\n'
                        '    friends',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff21262E),
                        ),
                        ),
                        SizedBox(height: 10),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Color(0xffFAD271),
                          child: Center(
                            child: Icon(Icons.play_arrow,
                            color: Colors.white,
                            size: 30,
                            ),
                          ),
                        ),
                                        
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Author',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text('Genres',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                              ),
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 40),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text(
                            'Huzaifa Shah',
                            style: GoogleFonts.schoolbell(
                              color: Color(0xff1E1E1E),
                              fontSize: 17,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text(
                                        'Sci-fi',
                            style: GoogleFonts.schoolbell(
                            color: Color(0xff1E1E1E),
                            fontSize: 17,
                                                    ),
                                                  ),
                          ),
                   ],
                 ),
               ),
               SizedBox(height: 30),
              Column(
                children: [
                  Text('           Case read they must it of cold that.\n'
                  '              Speaking trifling an to unpacked\n' 
                  '              moderate debating learning. An\n' 
                  '           particular contrasted he excellence\n' 
                  '    favorable on. Nay preference dispatched\n'
                  '    difficulty continuing joy one. Songs it be\n'
                  '    if ought hoped of. Too carriage attended\n'
                  '     him entrance desirous the saw. Twenty\n'
                  '     sister hearts garden limits put gay has.\n'
                  '      we hill lady will both sang room by.\n' 
                  '        Desirous men exercise overcam\n'
                  '        procured speaking her followed.\n',
                  style: GoogleFonts.lato(
                  fontSize: 18,
                  ),
                  ),
                  Image.asset('assets/image2.png',
                  height: size.height * 0.40,
                  width: size.width * 0.95,
                  fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  Text('        Case read they must it of cold that.\n'
'           Speaking trifling an to unpacked\n' 
'           moderate debating learning. An\n' 
'         particular contrasted he excellence\n' 
'   favorable on. Nay preference dispatched\n'
'  difficulty continuing joy one. Songs it be\n'
'  if ought hoped of. Too carriage attended\n'
'   him entrance desirous the saw. Twenty\n'
'   sister hearts garden limits put gay has.\n'
'     we hill lady will both sang room by.\n'
'      Desirous men exercise overcame\n'
'      procured speaking her followed.\n',
style: GoogleFonts.lato(
  fontSize: 18,
),
),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: size.height * 0.07,
                              width: size.width * 0.90,
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
                                  'Publish',
                                  style: TextStyle(
                                    color: Color(0xffFCFCFC),
                                    fontSize: 16,
                                    ),
                                ),
                              ),
                            ),
                          ),
                ],
              ),   
              ],
            ),
          ],
        ),
      ),
    );
  }
}
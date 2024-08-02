import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Play_Story extends StatefulWidget {

  const Play_Story({super.key});

  @override
  State<Play_Story> createState() => _Play_StoryState();
}

class _Play_StoryState extends State<Play_Story> {

  double _progressValue = 0.3;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFAD271),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/left-arrow 2.png',
                  scale: 5,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ClipOval(
                  child: Container(
                    height: size.height * 0.40,
                    width: size.width * 0.70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image3.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
               Align(
                alignment: Alignment.topLeft,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 40),
                   child: Text(
                      'Travels with friends',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Sci-Fi',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: size.width * 0.85,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 2.0,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 2.0),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white,
                      thumbColor: Colors.white,
                    ),
                    child: Slider(
                      value: _progressValue,
                      onChanged: (newValue) {
                        setState(() {
                          _progressValue = newValue;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: size.height * 0.14,
                  width: size.width * 0.14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow_rounded,
                      size: 40,
                      color: Color(0xffFAD271),
                      )
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
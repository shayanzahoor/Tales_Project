import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Createstory extends StatefulWidget {
  const Createstory({super.key});

  @override
  State<Createstory> createState() => _CreatestoryState();
}

class _CreatestoryState extends State<Createstory> {
  String? selectedGender;

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFFF6E9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 30),
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
                  Spacer(),
                  Image.asset('assets/upgrade.png', scale: 5),
                  Image.asset('assets/notification.png', scale: 5),
                  Image.asset('assets/panda2.png', scale: 5),
                ],
              ),
              Image.asset('assets/leftArrow.png', scale: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      'Define your story',
                      style: GoogleFonts.schoolbell(fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 65),
                          child: Text(
                            'Story Language',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFAD271),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Huzaifa Shah',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFAD271),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'English',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Child age: 4.5 year',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: size.height * 0.45,
                    child: LinearProgressIndicator(
                      value: 0.3,
                      minHeight: 15,
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      valueColor: AlwaysStoppedAnimation(Color(0xffFAD271)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Gender',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      genderContainer('Boy'),
                      SizedBox(width: 10),
                      genderContainer('Girl'),
                      SizedBox(width: 10),
                      genderContainer('Diverse'),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Describe your story',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: size.height * 0.30,
                    width: size.width * 0.87,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xffFAD271),
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Describe your story....',
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Additional Characters',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Add your favorite characters to the story!',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffFAD271),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, left: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Bumblebee',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/minus.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        height: size.height * 0.06,
                        width: size.width * 0.60,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffFAD271),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5, left: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Bumblebee',
                              hintStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/minus.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          'assets/plus.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Add character',
                        style: TextStyle(
                          color: Color(0xffFAD271),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Genres',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget genderContainer(String gender) {
    bool isSelected = selectedGender == gender;
    return GestureDetector(
      onTap: () => selectGender(gender),
      child: Container(
        height: 40,
        width: 90,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffFAD271) : Colors.white30,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.transparent : Color(0xffFAD271),
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          gender,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black45,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
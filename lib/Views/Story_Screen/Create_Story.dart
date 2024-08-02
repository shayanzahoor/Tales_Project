import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Createstory extends StatefulWidget {
  const Createstory({super.key});

  @override
  State<Createstory> createState() => _CreatestoryState();
  
}

class _CreatestoryState extends State<Createstory> {

    TextEditingController languageController = TextEditingController();


   double _progressValue = 0.3;


  String? selectedGender;

  final List<String> tags = [
    'Adventure', 'Fantasy', 'Mystery', 'Sci-Fi', 'Fairy Tale',
    'Superheroes', 'Animal\nAdventures', 'Time Travel', 'Show More',
  ];

  String? selectedEvent;
  List<String> events = ['English', 'German', 'Urdu'];

  final Set<int> selectedTags = {};

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hello, ',
                      style: TextStyle(
                        color: Color(0xff1E1E1E),
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      'Huzaifa',
                      style: GoogleFonts.schoolbell(
                        color: Color(0xff1E1E1E),
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 165),
                    Image.asset('assets/upgrade.png', scale: 5),
                    Image.asset('assets/notification.png', scale: 5),
                    Image.asset('assets/panda2.png', scale: 5),
                  ],
                ),
                Image.asset('assets/leftArrow.png', scale: 7),
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
                      padding: const EdgeInsets.only(left: 10),
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
                            padding: const EdgeInsets.only(right: 60),
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
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.07,
                          width: size.width * 0.43,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFAD271),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, bottom: 7),
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
                          width: size.width * 0.43,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffFAD271),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: DropdownButton(
                                              hint: Text(
                                                "English",
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              dropdownColor: Colors.white,
                                              icon: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Icon(
                                                  Icons.arrow_drop_down,
                                                  size: 28,
                                                  color: Colors.black45,
                                                ),
                                              ),
                                              iconSize: 30,
                                              isExpanded: true,
                                              underline: SizedBox(height: 10,),
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              value: selectedEvent,
                                              onChanged: (newValue) {
                                                setState(() {
                                                  selectedEvent = newValue;
                                                  languageController.text = newValue!;
                                                });
                                              },
                                              items: events.map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                        ),
                        ),
                      ],
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
        width: size.width * 0.90,
        child: SliderTheme(
           data: SliderTheme.of(context).copyWith(
          trackHeight: 8.0,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 2.0),
          activeTrackColor: Color(0xffFAD271),
          inactiveTrackColor: Colors.white,
          thumbColor: Color(0xffFAD271),
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
                      width: size.width * 0.90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(0xffFAD271),
                          width: 3,
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
                              width: 3,
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
                              width: 3,
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
    SizedBox(height: 8),
      Wrap(
        spacing: 8.0,
        runSpacing: 9.0,
        children: [
          ...List<Widget>.generate(tags.length - 1, (int index) {
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
          GestureDetector(
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                tags.last, 
                style: TextStyle(
                  color: Color(0xffFAD271),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
            ),
            SizedBox(height: 30),
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
                                  'Create Imagination',
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
            width: 3,
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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

void main() {
  runApp(Team());
}

class Team extends StatefulWidget {
  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  void initState() {
    getdata();
    super.initState();
  }

  var color1 = const Color(0xffE1D342);
  var lightBackground = Color(0xFFCCF2FA);
  var color = const Color(0xff0E1C36);
  var teammate1 = '';
  var teammate2 = '';
  var teammate3 = '';
  var teammate4 = '';
  var teamname = '';
  var username = '';
  var docID = 'BtX9xm9ioncqthMpc6j5lZa86Of1';
  bool isDarkMode = false;

  void getdata() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc('BtX9xm9ioncqthMpc6j5lZa86Of1')
        .get()
        .then((DocumentSnapshot docSnapshot) => {
              teammate1 = docSnapshot.data()['Teammate1'],
              teammate2 = docSnapshot.data()['Teammate2'],
              teammate3 = docSnapshot.data()['Teammate3'],
              teammate4 = docSnapshot.data()['Teammate4'],
              teamname = docSnapshot.data()['Team_name'],
              username = docSnapshot.data()['username'],
            });
    print(teammate1);
  }
  void manageTheme() {
    DateTime now = DateTime.now(); // current time
    if (now.isAfter(DateTime(2020, 12, 18, 12, 30))) {
      setState(() {
        isDarkMode = !isDarkMode;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45,
                ),
                Text('My Team',
                    style: GoogleFonts.raleway(
                      fontSize: 40,
                      color: isDarkMode ? darkBackground : Colors.white,
                    )),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "We're called",
                  style: GoogleFonts.raleway(
                      fontSize: 20, color: isDarkMode ? Colors.lightBlueAccent: color1, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 13,
                ),
                Text(
                  teamname,
                  style: GoogleFonts.raleway(fontSize: 28, color: isDarkMode ? Colors.black : Colors.white,),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  "Our Stars",
                  style: GoogleFonts.raleway(
                      fontSize: 20, color:isDarkMode ? Colors.lightBlueAccent: color1,fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            username,
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? darkBackground : Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '19BEC0123',
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? darkBackground : Colors.white,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            teammate1,
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? Colors.black: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '19BEC0123',
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? Colors.black : Colors.white,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            teammate2,
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ?Colors.black : Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '19BEC0123',
                            style:
                                GoogleFonts.raleway(fontSize: 15, color:isDarkMode ? Colors.black : Colors.white,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            teammate3,
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? Colors.black: Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '19BEC0123',
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? Colors.black : Colors.white,),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            teammate4,
                            style:
                                GoogleFonts.raleway(fontSize: 15, color: isDarkMode ? Colors.black : Colors.white,fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            '19BEC0123',
                            style:
                                GoogleFonts.raleway(fontSize: 15, color:isDarkMode ? Colors.black : Colors.white,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 35.0),
                  child: Divider(
                    color: color1,
                    thickness: 4,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discord Channel',
                          style: GoogleFonts.raleway(
                              color: color1,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              'code:',
                              style: GoogleFonts.raleway(
                                  color: isDarkMode ? Colors.black: Colors.white, fontSize: 20,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Xs12Vd',
                              style: GoogleFonts.raleway(color: isDarkMode ? Colors.lightBlueAccent: color1, fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),

                    //SizedBox(width:2),

                    FlatButton(
                      child: Image.asset(
                        'images/image 106.png',
                        height: 65,
                        width: 65,
                      ),
                      onPressed: () {
                        launch('https://discord.gg/xNQpt7PCGP');
                      },
                    )
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 115,
                    height: 42,
                    child: RaisedButton(
                      color: isDarkMode ? lightBackground:darkBackground,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: isDarkMode ? darkBackground : Colors.white, width: 3)),
                      child: Text(
                        'My ID',
                        style: GoogleFonts.raleway(color: isDarkMode ? Colors.black:Colors.white, fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        getdata();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        backgroundColor: isDarkMode ? lightBackground : darkBackground,
        ),

    );
  }
}

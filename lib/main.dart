import 'package:app_one/utils/emoji_face.dart';
import 'package:app_one/utils/exercise.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var userName = "Uchiha Madara";
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        bottomNavigationBar: BottomNavigationBar(  
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                     Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, $userName!",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text('$date',
                        style: TextStyle(
                          color: Colors.blue[200],
                        ),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      Text("Search",
                      style: TextStyle(  
                        color: Colors.white
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("How do you feel today",
                    style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        EmojiCan(emoticonFace: '😠'),
                        SizedBox(
                          height: 12,
                        ),
                        Text('Bad',
                         style: TextStyle(  
                          color: Colors.white
                         ),
                         )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiCan(emoticonFace: '😠'),
                        SizedBox(
                          height: 12,
                        ),
                         Text('Bad',
                         style: TextStyle(  
                          color: Colors.white
                         ),
                         )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiCan(emoticonFace: '😠'),
                        SizedBox(
                          height: 12,
                        ),
                         Text('Bad',
                         style: TextStyle(  
                          color: Colors.white
                         ),
                         )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiCan(emoticonFace: '😠'),
                        SizedBox(
                          height: 12,
                        ),
                         Text('Bad',
                         style: TextStyle(  
                          color: Colors.white
                         ),
                         )
                      ],
                    ),
                  ],
                ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[300],
                  child: Center(   
                    child: Column(  
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercises',
                            style: TextStyle(  
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                            ),
                            Icon(
                              Icons.more_horiz
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                       Expanded(
                        child: ListView(  
                          children: [
                            Exercise(),
                            SizedBox(
                              height: 14,
                            ),
                            Exercise(),
                            SizedBox(
                              height: 14,
                            ),
                            Exercise(),
                            SizedBox(
                              height: 14,
                            ),
                            Exercise(),
                            SizedBox(
                              height: 14,
                            ),
                            Exercise(),
                            SizedBox(
                              height: 14,
                            ),
                          ],
                        ),
                       )
                      ]
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

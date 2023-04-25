import 'package:flutter/material.dart';
import 'package:mental_health_app/util/emoticons.dart';
import 'package:mental_health_app/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ]),

      // Body Area
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // "Greetings" Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Jeff!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("April 22, 2023",
                              style: TextStyle(
                                color: Colors.blue[200],
                              )),
                        ],
                      ),

                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // How do you feel today?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel today?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            // Emoticon Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // bad
                Column(
                  children: [
                    Emoticons(
                      emoticons: '😔',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Bad',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),

                // fine
                Column(
                  children: [
                    Emoticons(
                      emoticons: '😐',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Fine',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),

                // well
                Column(
                  children: [
                    Emoticons(
                      emoticons: '🙂',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Well',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),

                // excellent
                Column(
                  children: [
                    Emoticons(
                      emoticons: '😀',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Excellent',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),

            Expanded(
              // Curved border around modal
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                        // Exercise Heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Exercises',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // List View of Exercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.self_improvement,
                                exerciseName: 'Meditation',
                                numberOfExercises: 10,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Fitness',
                                numberOfExercises: 8,
                                color: Colors.red,
                              ),
                              ExerciseTile(
                                icon: Icons.create,
                                exerciseName: 'Journaling',
                                numberOfExercises: 5,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

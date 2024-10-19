// home tab screen

import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  // Greetings
  String morningGreeting = "Good morning! How are you doing today?";
  String afternoonGreeting = "Good day, friend! How is your day going?";
  String eveningGreeting = "Evening is here! How are you feeling?";

  // time
  DateTime time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // THE HOME SCREEN SHALL CONTAIN A HIGLIGHT OF SOME RELEVANT FEATURES
    // HIGHLISTS OF SOME IMPORTANT UPDATES
    // IT SHALL INCLUDE,
    // #FEATURED POSTS/ACTIVITIES
    // #ANONYMOUS CHAT BUTTON
    // CUSTOM GREETINGS BY TIME OF DAY
    // QUOTES OF THE WEEEK #Today's Quote
    // TO BE REORDERS HOW NECESSARY
    return SingleChildScrollView(
      child: Column(
        // OUTLINE FOR THE HOME PAGE COLUMN ITEMS
        // greetings
        // today's quote
        // featured posts
        // others
        // anonymous
        // suggestions
        // quick contacts #executives #counsellor
        // follow us on social media

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // #ITEM 1
          // Container: Welcome text with image
          // Welcome back, / Good morning'afternoon'evening
          // caring friend

          // banner
          Container(
            height: MediaQuery.sizeOf(context).height / 3,
            width: double.infinity,
            // color: Colors.red.shade400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/kpc-23-home.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          // ITEM #2
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    morningGreeting,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              // anonymous chat space button button
              // ANONYMOUS SPACE
              IconButton(
                hoverColor: Colors.grey,
                onPressed: () {
                  Navigator.pushNamed(context, '/anonymousSpace');
                },
                icon: const Icon(Icons.telegram_outlined),
              ),
            ],
          ),
          // ITEM #3
          // Add Banner Asset Image
          SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                candidateBox("img234", "mykpc/post123"),
                candidateBox("img234", "mykpc/post123"),
                candidateBox("img234", "mykpc/post123"),
              ],
            ),
          ),

          const SizedBox(height: 10.0),

          // ITEM #4

          // Upcoming Programs
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "For You",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Expanded(
                child: Text(""),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded))
            ],
          ),

          // ITEM #5
          forYouBox(),
          PodcastBox(),
          PodcastBox(),
          PodcastBox(),
          PodcastBox(),
          PodcastBox(),

          // ITEM #6
          // ITEM #7
          // ITEM #8
        ],
      ),
    );
  } // Widget build method ends

  // ................................... //
  // RELEVANT WIDGETS AND FUNCTIONS HERE //
  // ................................... //

  // featured box
  // THIS IS THE BOX FOR THE SLIDESHOW OF SOME FEATURED ITEMS/ACTIVITY POSTS
  // IT TAKES AN IMAGE/FLYER AND POST URL, (AND MAYBE A BRIEF CAPTION AS IN THE POST)
  // THE FEATURED ITEMS SHALL BE SET OR REMOVED BY AND AN EDITOR/ADMIN
  // THIS SHALL BE DONE FOR MAINLY UPCOMING PROGRAMS OR EVENTS AND REMOVED IF EVENT IS PAST
  // THE onTap FUNCTION SHALL TAKE YOU TO THE PARTICULAR ACTIVITY POST (IN THE #ACTIVITY TAB)
  Widget candidateBox(String imageUrl, String postUrl) {
    return GestureDetector(
      onTap: () {},

      // Widget
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 240,
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: const Color.fromARGB(255, 0, 121, 21),
              ),
              borderRadius: BorderRadius.circular(4)),
          child: Column(
            children: [
              // image
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  "assets/images/kpc-23-acc.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  } // featured box ends

  // Podcast Box
// HAVE TO DESIGN MY OWN VIEW BOX INSTEAD OF USING THE LISTTILE
// ignore: non_constant_identifier_names
  Widget PodcastBox() {
    return ListTile(
      leading: Container(
        width: MediaQuery.of(context).size.width / 2,
        // height: 150,
        color: Colors.red,
      ),
      title: const Text("Item title"),
      subtitle: const Text("Subtitle text... description"),
      trailing: const Icon(Icons.play_arrow),
    );
  }

  Widget forYouBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // image box
              Container(
                  height: 140,
                  width: 150,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/kpc-23-home.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    hoverColor: Colors.grey,
                    icon: const Icon(Icons.play_arrow_outlined,
                        size: 50, color: Colors.white),
                  )

                  // border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  ),

              // description
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Title of Item"),
                      Expanded(child: Text("Brief description of content...")),
                      // Spacer(),
                      Row(
                        children: [
                          Icon(Icons.alarm),
                          Icon(Icons.date_range_outlined),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              // trailing icon button
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert_outlined),
              )
            ]),
      ),
    );
  }
// INSIDE BUILD CLASS
}
// widget build state class END

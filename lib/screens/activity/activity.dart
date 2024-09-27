import 'package:flutter/material.dart';
import 'package:mykpc_app/screens/activity/activities_posts.dart';
import 'package:mykpc_app/screens/activity/activity_box.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({super.key});

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  @override
//   final String activityTitle = "Activity titleeeeee";
//   final String activityMessage =
//       "The first section was used to solicit the respondent’s demographic information. Specifically, it addressed questions relating to their gender, age, online shopping experiences, education, and employment status. The other part of the research instrument aimed to solicit data concerning the hypotheses posed for the study.";
//   final String activityImage = "assets/images/kpc-23-home.jpg";
// // ignore: constant_identifier_names, non_constant_identifier_names
//   final String date_time = "23/09/2024";
//   final String username = "Simon Peters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: ListView(children: [
        //   ActivitySummaryBox(activityTitle, activityMessage, activityImage,
        //       date_time, username),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return ActivitySummaryBox(
              posts[index].postTitle,
              posts[index].postBody,
              posts[index].userImage,
              posts[index].postDateTime,
              posts[index].username,
              posts[index].postLikes.toString(),
            );
          },
        ),
      ),
    );
  }
}

// DB SERVICE
// FIRESTORE SERVICE

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
// SETTING FIREBASE COLLECTION REF
  final postsRef = FirebaseFirestore.instance.collection('activityPosts');

  // CREATE <ADD> POST TO FIRESTORE,
  // ADD automatically creates a doc id

  // GET ALL POSTS FROM FIRESTORE,

  // UPDATE <UPDATE> POST IN FIRESTORE,
  //dont use SET (SET replaces the entire document with new one)
  // use updateData (UPDATE only specified fields)

  // DELETE <DELETE> POST IN FIRESTORE,
}

// ////////////////////////
// // Create a new user with a first and last name
// final user = <String, dynamic>{
//   "first": "Alan",
//   "middle": "Mathison",
//   "last": "Turing",
//   "born": 1912
// };

// // Add a new document with a generated ID
// db.collection("users").add(user).then((DocumentReference doc) =>
//     print('DocumentSnapshot added with ID: ${doc.id}'));
// ///////////////////////
// post fields
// # user/poster
// # posttitle
// # image
// # content
// date-time
// #likes
// comments

// DOCUMENT REFERENCE

// ACTIVITY/POST CLASS

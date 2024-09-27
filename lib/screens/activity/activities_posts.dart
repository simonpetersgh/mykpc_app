class ActivityPost {
  String userImage;
  String username;
  String postTitle;
  String postBody;
  String postDateTime;
  int postLikes;
  // constructor
  ActivityPost(this.userImage, this.username, this.postTitle, this.postBody,
      this.postDateTime, this.postLikes);
}

List<ActivityPost> posts = [
  ActivityPost(
      "assets/images/kpc-23-home.jpg",
      "Simon Peters",
      "Activity titleeeeee",
      "The first section was used to solicit the respondent’s demographic information. Specifically, it addressed questions relating to their gender, age, online shopping experiences, education, and employment status. The other part of the research instrument aimed to solicit data concerning the hypotheses posed for the study.",
      "23/09/2024",
      0),
  ActivityPost(
      "assets/images/kpc-23-acc.jpg",
      "Rejoice Rejoice",
      "2nd General Meeting and Hall Visitation",
      "Second GMHV is coming off this weekend, let's kindly anticipate and prepare accordingly.",
      DateTime.now().toString(),
      0),
  ActivityPost(
      "assets/images/SimonGREEN.jpg",
      "Benedicta Kuduah",
      "Socialisation and Aerobics",
      "This chapter delves into existing research on consumer trust, risk perceptions, and their influence on continuous purchase behavior within Ghanaian e-commerce platforms. It establishes the conceptual framework guiding this study and develops hypotheses to be tested.",
      DateTime.now().toString(),
      0)
];

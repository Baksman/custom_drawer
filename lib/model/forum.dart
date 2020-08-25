import 'package:helloworld/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;

  Forum({this.title, this.imagePath, this.rank, this.topics, this.threads,
      this.subs});
}

final fortNightForum = Forum(
  title:"FortNite",
  imagePath: "assets/images/fortnite.png",
  rank:"31",
  threads: "88",
  subs: "500",
  topics: forNightTopics
  

);


final pubgForum = Forum(
  title:"FortNite",
  imagePath: "assets/images/pubg.png",
  rank:"31",
  threads: "88",
  subs: "500",
  topics: pubgtTopics
  

);
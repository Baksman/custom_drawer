class Topic {
  final String question;
  final String recentAnswer;
  final String answerCount;

  Topic({this.question, this.recentAnswer, this.answerCount});
}

final forNightTopics = [
  Topic(
      question: "abracadabra",
      recentAnswer: "abracadabra abracadabra abracadabra",
      answerCount: "30"),
  Topic(
      question: "abracadabra",
      recentAnswer: "abracadabra abracadabra abracadabra",
      answerCount: "30")
];

final pubgtTopics = forNightTopics;
